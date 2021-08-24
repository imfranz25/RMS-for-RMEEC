import sys

import mysql
from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtCore import QDate, Qt
from PyQt5.QtGui import QColor
from PyQt5.QtWidgets import QMessageBox
from db import con
from dialogs import Dialog
from project_activity import Ui_Activity


class Ui_ProjectPage(object):
	flagy=False
	project_label=""
	LBclient_info=""
	LBsite_info=""
	LBquantity_info=""
	LBunit_price_info=""
	LBamount_info=""
	DEstart_date=""
	DEend_date=""
	CBcategory_input=""
	LBscope=""
	LBunitname=""

	project_id=[]
	project_title=[]
	project_client=[]

	listWidget=""
	itemid=0

	remove_project_btn=""
	open_project_btn=""
	edit_btn=""
	add_project_btn=""

	save_btn=""
	cancel_btn=""

	search_area=""

	def search(list, string):
		list.clear()
		names = []
		index = 0
		for x in range(len(Ui_ProjectPage.project_id)):
			project = (f"{Ui_ProjectPage.project_title[index]}\n[{Ui_ProjectPage.project_client[index]}]")
			item = QtWidgets.QListWidgetItem(project)
			item.setBackground(QColor('#666666')) if (index % 2) == 0 else item.setBackground(QColor('#595959'))
			item.setTextAlignment(QtCore.Qt.AlignTrailing | QtCore.Qt.AlignVCenter)
			item.value = Ui_ProjectPage.project_id[index]
			list.addItem(item)
			names.append(project)
			index += 1

		if string != "":
			items = list.findItems(string, Qt.MatchStartsWith)
			if len(items) > 0:
				searched = {}
				z = 0
				for item in items:
					list.takeItem(list.row(item))
					searched[z] = item
					z += 1

				list.clear()
				for i in range(len(searched)):
					j = 0
					while (searched[i].text() != names[j]):
						j += 1
					searched[i].value = Ui_ProjectPage.project_id[j]
					searched[i].setBackground(QColor('#666666')) if (i % 2) == 0 else searched[i].setBackground(
						QColor('#595959'))
					searched[i].setTextAlignment(QtCore.Qt.AlignTrailing | QtCore.Qt.AlignVCenter)
					list.addItem(searched[i])

			else:
				list.clear()

	def removeProject(project_list):
		if Ui_ProjectPage.itemid>0:
			answer = Ui_ProjectForm.cancel_dialog("Are you sure you want to remove this project?")
			if answer:
				try:
					cursor = con.cursor()
					query1 = (f"DELETE FROM `projects` WHERE `project_id` = {Ui_ProjectPage.itemid}")
					cursor.execute(query1)
					con.commit()
	  
					query2 = (f"DELETE FROM `projecte_balance` WHERE `project_id` = {Ui_ProjectPage.itemid}")
					cursor.execute(query2)
					con.commit()

					query2 = (f"DELETE FROM `projectdtr` WHERE `project_id` = {Ui_ProjectPage.itemid}")
					cursor.execute(query2)
					con.commit()

					query2 = (f"DELETE FROM `project_payroll` WHERE `project_id` = {Ui_ProjectPage.itemid}")
					cursor.execute(query2)
					con.commit()


					query = f"SELECT * FROM `projecte` WHERE `project_id` = {Ui_ProjectPage.itemid}"
					cursor.execute(query)
					res = cursor.fetchall()

					for x in res:
						query1 = (f"UPDATE `employees` SET `Designated`='No',`Current_Site`='None' WHERE `id` = {x[2]}")
						cursor.execute(query1)
						con.commit()


					query2 = (f"DELETE FROM `projecte` WHERE `project_id` = {Ui_ProjectPage.itemid}")
					cursor.execute(query2)
					con.commit()

					query2 = (f"DELETE FROM `transaction` WHERE `project_id` = {Ui_ProjectPage.itemid}")
					cursor.execute(query2)
					con.commit()



					msgBox = QMessageBox()
					msgBox.setIcon(QMessageBox.Information)
					msgBox.setText("Project was removed successfully")
					msgBox.setWindowTitle("Message Alert")
					msgBox.setStandardButtons(QMessageBox.Ok)
					msgBox.buttonClicked.connect(msgBox.close)

					returnValue = msgBox.exec()
					if returnValue == QMessageBox.Ok:
						Ui_ProjectPage.set_readonly(False, project_list)
						Ui_ProjectPage.resetpage()
	 

				except:
					Ui_ProjectForm.show_dialog(sys.exc_info())
		else:
			Ui_ProjectForm.show_dialog("Please select a project first")

	def resetpage():
		
		

		Ui_ProjectPage.project_label.setText("Project Title")
		Ui_ProjectPage.LBclient_info.setText("")
		Ui_ProjectPage.LBsite_info.setText("")
		Ui_ProjectPage.LBamount_info.setText("")
		Ui_ProjectPage.LBunit_price_info.setText("")
		Ui_ProjectPage.LBquantity_info.setText("")
		now = QDate.currentDate()
		Ui_ProjectPage.DEstart_date.setDate(now)
		Ui_ProjectPage.DEend_date.setDate(now)
		Ui_ProjectPage.CBcategory_input.setCurrentIndex(0)
		Ui_ProjectPage.LBscope.setPlainText("")
		Ui_ProjectPage.LBunitname.setText("")
		Ui_ProjectPage.open_project_btn.hide()
		Ui_ProjectPage.itemid=0
		Ui_ProjectPage.edit_btn.hide()

		Ui_ProjectPage.get_project(Ui_ProjectPage.listWidget)

	def resetpage2(cat):
		
		

		Ui_ProjectPage.project_label.setText("Project Title")
		Ui_ProjectPage.LBclient_info.setText("")
		Ui_ProjectPage.LBsite_info.setText("")
		Ui_ProjectPage.LBamount_info.setText("")
		Ui_ProjectPage.LBunit_price_info.setText("")
		Ui_ProjectPage.LBquantity_info.setText("")
		now = QDate.currentDate()
		Ui_ProjectPage.DEstart_date.setDate(now)
		Ui_ProjectPage.DEend_date.setDate(now)
		Ui_ProjectPage.CBcategory_input.setCurrentIndex(0)
		Ui_ProjectPage.LBscope.setPlainText("")
		Ui_ProjectPage.LBunitname.setText("")
		Ui_ProjectPage.open_project_btn.hide()
		Ui_ProjectPage.itemid=0
		Ui_ProjectPage.edit_btn.hide()

		Ui_ProjectPage.get_project2(cat,Ui_ProjectPage.listWidget)



	def saveEdit(project_list):
		title = Ui_ProjectPage.project_label.text()
		client = Ui_ProjectPage.LBclient_info.text()
		site = Ui_ProjectPage.LBsite_info.text()
		quantity = Ui_ProjectPage.LBquantity_info.text()
		unit = Ui_ProjectPage.LBunit_price_info.text()
		contract = Ui_ProjectPage.LBamount_info.text()
		scope = Ui_ProjectPage.LBscope.toPlainText()
		unitname = Ui_ProjectPage.LBunitname.text()

		if (title == "") | (client == "") | (site == "") | (quantity == "") | (unit == "") | (contract == "") | (
				scope == "") | (unitname == ""):
			Ui_ProjectForm.show_dialog("Please complete the form first")
		elif (float(contract) <= 0):
			Ui_ProjectForm.show_dialog("Invalid Amount")
		elif Ui_ProjectPage.DEstart_date.date() >= Ui_ProjectPage.DEend_date.date():
			Ui_ProjectForm.show_dialog("Invalid Date Setup")
		else:
			try:

				start = (
					f"{Ui_ProjectPage.DEstart_date.date().year()},{Ui_ProjectPage.DEstart_date.date().month()},{Ui_ProjectPage.DEstart_date.date().day()}")
				end = (
					f"{Ui_ProjectPage.DEend_date.date().year()},{Ui_ProjectPage.DEend_date.date().month()},{Ui_ProjectPage.DEend_date.date().day()}")

				category = Ui_ProjectPage.CBcategory_input.currentText()

				cursor = con.cursor()

				query1 = (f"UPDATE `projects` SET `project_title` = '{title}', `project_clientname` = '{client}', `project_site` = '{site}', `project_start` = '{start}', `project_end` = '{end}', `project_category` = '{category}', `project_quantity` = {quantity}, `project_unit` = '{unitname}', `project_unitprice` = {unit},`project_amount` = {contract}, `project_scope` = '{scope}' WHERE `project_id` = {Ui_ProjectPage.itemid}")

				cursor.execute(query1)
				con.commit()

				query = f"SELECT * FROM `projecte` WHERE `project_id`={Ui_ProjectPage.itemid}"
				cursor.execute(query)
				res = cursor.fetchall()

				for y in res:

					query2 = f"UPDATE `employees` SET `Current_Site`='{site}' WHERE `id`={y[2]}"
					cursor.execute(query2)
					con.commit()

				Ui_Activity.record_activity("admin",f"Update Project Record : {title}")

	

				msgBox = QMessageBox()
				msgBox.setIcon(QMessageBox.Information)
				msgBox.setText("Project was updated successfully")
				msgBox.setWindowTitle("Message Alert")
				msgBox.setStandardButtons(QMessageBox.Ok)
				msgBox.buttonClicked.connect(msgBox.close)

				returnValue = msgBox.exec()
				if returnValue == QMessageBox.Ok:
					Ui_ProjectPage.set_readonly(False, project_list)
					Ui_ProjectPage.get_project(Ui_ProjectPage.listWidget)


			except:
				Ui_ProjectForm.show_dialog(sys.exc_info())

	def getAmount():
		quantity = Ui_ProjectPage.LBquantity_info.text()
		unit = Ui_ProjectPage.LBunit_price_info.text()
		if (len(quantity)>0) & (len(unit)>0):
			x=float(quantity)*float(unit)
			x= "{:.2f}".format(x)
			Ui_ProjectPage.LBamount_info.setText(str(x))


	def cancel_dialog(employee_list):
		msgBox = QMessageBox()
		msgBox.setIcon(QMessageBox.Information)
		msgBox.setText("Are you sure you want to discard changes?")
		msgBox.setWindowTitle("Message Alert")
		msgBox.setStandardButtons(QMessageBox.Ok|QMessageBox.Cancel)
		msgBox.buttonClicked.connect(msgBox.close)

		returnValue = msgBox.exec()
		if returnValue == QMessageBox.Ok:
			Ui_ProjectPage.set_readonly(False, employee_list)


	def set_readonly1(bool,project_list):
		Ui_ProjectPage.project_label.setEnabled(bool)
		Ui_ProjectPage.LBclient_info.setEnabled(bool)
		Ui_ProjectPage.LBsite_info.setEnabled(bool)
		Ui_ProjectPage.LBamount_info.setEnabled(False)
		Ui_ProjectPage.LBunit_price_info.setEnabled(bool)
		Ui_ProjectPage.LBquantity_info.setEnabled(bool)
		Ui_ProjectPage.DEstart_date.setEnabled(bool)
		Ui_ProjectPage.DEend_date.setEnabled(bool)
		Ui_ProjectPage.CBcategory_input.setEnabled(bool)
		Ui_ProjectPage.LBscope.setReadOnly(True)
		Ui_ProjectPage.LBunitname.setEnabled(bool)

		if bool == False:
			Ui_ProjectPage.save_btn.hide()
			Ui_ProjectPage.cancel_btn.hide()
			Ui_ProjectPage.remove_project_btn.show()
			Ui_ProjectPage.open_project_btn.show()
			Ui_ProjectPage.edit_btn.show()
			Ui_ProjectPage.add_project_btn.show()

			project_list.setEnabled(True)
			if Ui_ProjectPage.itemid > 0:
				Ui_ProjectPage.set_info()
		else:
			Ui_ProjectPage.save_btn.show()
			Ui_ProjectPage.cancel_btn.show()
			Ui_ProjectPage.remove_project_btn.hide()
			Ui_ProjectPage.open_project_btn.hide()
			Ui_ProjectPage.edit_btn.hide()
			Ui_ProjectPage.add_project_btn.hide()

			project_list.setEnabled(False)



	def set_readonly(bool,project_list):
		if Ui_ProjectPage.itemid > 0:
			Ui_ProjectPage.project_label.setEnabled(bool)
			Ui_ProjectPage.LBclient_info.setEnabled(bool)
			Ui_ProjectPage.LBsite_info.setEnabled(bool)
			Ui_ProjectPage.LBamount_info.setEnabled(False)
			Ui_ProjectPage.LBunit_price_info.setEnabled(bool)
			Ui_ProjectPage.LBquantity_info.setEnabled(bool)
			Ui_ProjectPage.DEstart_date.setEnabled(bool)
			Ui_ProjectPage.DEend_date.setEnabled(bool)
			Ui_ProjectPage.CBcategory_input.setEnabled(bool)
			Ui_ProjectPage.LBscope.setReadOnly(not bool)
			Ui_ProjectPage.LBunitname.setEnabled(bool)

			if bool == False:
				Ui_ProjectPage.save_btn.hide()
				Ui_ProjectPage.cancel_btn.hide()
				Ui_ProjectPage.remove_project_btn.show()
				Ui_ProjectPage.open_project_btn.show()
				Ui_ProjectPage.edit_btn.show()
				Ui_ProjectPage.add_project_btn.show()

				project_list.setEnabled(True)
				if Ui_ProjectPage.itemid > 0:
					Ui_ProjectPage.set_info()
			else:
				Ui_ProjectPage.save_btn.show()
				Ui_ProjectPage.cancel_btn.show()
				Ui_ProjectPage.remove_project_btn.hide()
				Ui_ProjectPage.open_project_btn.hide()
				Ui_ProjectPage.edit_btn.hide()
				Ui_ProjectPage.add_project_btn.hide()
				project_list.setEnabled(False)

		else:
			Ui_ProjectForm.show_dialog("Please Select a Project First")

	def process_date(bday):
		index = 0
		start = 0
		flag1 = True
		flag2 = False
		flag3 = False

		while index < len(bday):
			if flag1 and (bday[index] == ","):
				year = bday[start:index]
				start = index + 1
				flag1 = False
				flag2 = True
			elif flag2 and (bday[index] == ","):
				month = bday[start:index]
				start = index + 1
				flag2 = False
				flag3 = True
			if flag3:
				day = bday[start:len(bday)]
				break
			index = index + 1

		return QDate(int(year), int(month), int(day))

	def set_info():
		# get_info_database
		if Ui_ProjectPage.itemid > 0:
			try:
				Ui_ProjectPage.edit_btn.show()
				cursor = con.cursor()
				cursor.execute(f"SELECT * FROM `projects` WHERE `project_id` = {Ui_ProjectPage.itemid}")
				res = cursor.fetchall()

				for x in res:
					Ui_ProjectPage.project_label.setText(x[1])
					Ui_ProjectPage.LBclient_info.setText(x[2])
					Ui_ProjectPage.LBsite_info.setText(x[3])
					Ui_ProjectPage.LBquantity_info.setText(str(x[7]))
					Ui_ProjectPage.LBunitname.setText(x[8])
					Ui_ProjectPage.LBunit_price_info.setText(str(x[9]))
					Ui_ProjectPage.LBamount_info.setText(str(x[10]))



					Ui_ProjectPage.CBcategory_input.setCurrentText(x[6])

					now = Ui_ProjectPage.process_date(x[4])
					now=now.addDays(-29)
					# set min max
					Ui_ProjectPage.DEstart_date.setMinimumDate(now)

					Ui_ProjectPage.DEstart_date.setDate(Ui_ProjectPage.process_date(x[4]))






					Ui_ProjectPage.DEend_date.setDate(Ui_ProjectPage.process_date(x[5]))

					Ui_ProjectPage.LBscope.setPlainText(x[11])


			except mysql.connector.Error as e:
				Ui_ProjectForm.show_dialog(e)
	def get_infoFromRecent(recentvalue):
		Ui_ProjectPage.itemid = int(recentvalue)
		Ui_ProjectPage.open_project_btn.show()


	def get_info(item):
		Ui_ProjectPage.itemid = item.value
		Ui_ProjectPage.search_area.setText("")
		Ui_ProjectPage.open_project_btn.show()

		try:
			Ui_ProjectPage.set_info()
		except:
			Ui_ProjectForm.show_dialog(sys.exc_info())

	def mysql_select():
		cursor = con.cursor()
		cursor.execute("SELECT * FROM `projects`")

		return cursor.fetchall()

	def get_project2(cat,project_item):
		cursor = con.cursor()
		project_item.clear()
		# get_info_database
		try:
			cursor.execute(f"SELECT * FROM `projects` WHERE `project_category`='{cat}'")
			res = cursor.fetchall()
			Ui_ProjectPage.project_id=[]
			Ui_ProjectPage.project_title=[]
			Ui_ProjectPage.project_client=[]

			for x in res:
				date = QDate(Ui_ProjectPage.process_date(x[5]))
				date=date.addDays(30)
				now = QDate.currentDate()
				if date >= now:
					Ui_ProjectPage.project_id.append(x[0])
					Ui_ProjectPage.project_title.append(x[1])
					Ui_ProjectPage.project_client.append(x[2])
				else:
					cursor.execute(f"SELECT * FROM `projecte` WHERE `project_id`={x[0]}")
					res2=cursor.fetchall()
					for y in res2:
						query1 = (f"UPDATE `employees` SET `Designated`='No',`Current_Site`='None' WHERE `id` = {y[2]}")
						cursor.execute(query1)
						con.commit()

			


		except mysql.connector.Error as e:
			Ui_ProjectForm.show_dialog(str(e))

			# insert elements
		index = 0
		while index < len(Ui_ProjectPage.project_id):
			try:
				project = (f"{Ui_ProjectPage.project_title[index]}\n[{Ui_ProjectPage.project_client[index]}]")
				item = QtWidgets.QListWidgetItem(project)
				item.setBackground(QColor('#666666')) if (index % 2) == 0 else item.setBackground(QColor('#595959'))
				item.value = Ui_ProjectPage.project_id[index]
				item.setTextAlignment(QtCore.Qt.AlignTrailing | QtCore.Qt.AlignVCenter)
				project_item.addItem(item)
				index = index + 1
			except:
				Ui_ProjectForm.show_dialog(str(sys.exc_info()))
	def checkDue():
		cursor = con.cursor()
		res = Ui_ProjectPage.mysql_select()
		for x in res:
			date2 = QDate(Ui_ProjectPage.process_date(x[5]))
			date2=date2.addDays(7)
			now = QDate.currentDate()
			if date2 >= now:
				Dialog.msg_dialog(f"Project :{x[1]} has 1 week left") 


	def get_project(project_item):
		cursor = con.cursor()
		project_item.clear()
		# get_info_database
		try:
			res = Ui_ProjectPage.mysql_select()
			Ui_ProjectPage.project_id=[]
			Ui_ProjectPage.project_title=[]
			Ui_ProjectPage.project_client=[]

			for x in res:
				date = QDate(Ui_ProjectPage.process_date(x[5]))
				date=date.addDays(30)
				date2 = QDate(Ui_ProjectPage.process_date(x[5]))
				date2=date2.addDays(-7)
				date3 = QDate(Ui_ProjectPage.process_date(x[5]))
				now = QDate.currentDate()
				if date >= now:
					Ui_ProjectPage.project_id.append(x[0])
					Ui_ProjectPage.project_title.append(x[1])
					Ui_ProjectPage.project_client.append(x[2])

					if (Ui_ProjectPage.flagy):
						if date2 <= now:
							left = now.daysTo(date3)
							Dialog.msg_dialog(f"Project :{x[1]} has {left} day(s) left") 


				else:
					cursor.execute(f"SELECT * FROM `projecte` WHERE `project_id`={x[0]}")
					res2=cursor.fetchall()
					for y in res2:
						query1 = (f"UPDATE `employees` SET `Designated`='No',`Current_Site`='None' WHERE `id` = {y[2]}")
						cursor.execute(query1)
						con.commit()



			


		except mysql.connector.Error as e:
			Ui_ProjectForm.show_dialog(e)

			# insert elements
		index = 0
		Ui_ProjectPage.flagy=True
		while index < len(Ui_ProjectPage.project_id):
			try:
				project = (f"{Ui_ProjectPage.project_title[index]}\n[{Ui_ProjectPage.project_client[index]}]")
				item = QtWidgets.QListWidgetItem(project)
				item.setBackground(QColor('#666666')) if (index % 2) == 0 else item.setBackground(QColor('#595959'))
				item.value = Ui_ProjectPage.project_id[index]
				item.setTextAlignment(QtCore.Qt.AlignTrailing | QtCore.Qt.AlignVCenter)
				project_item.addItem(item)
				index = index + 1
			except:
				Ui_ProjectForm.show_dialog(sys.exc_info())

	def ProjectPage(project_page,DashbaordWindow):
		project__title_label = QtWidgets.QLabel(project_page)
		project__title_label.setGeometry(QtCore.QRect(10, 10, 281, 81))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		font.setBold(True)
		font.setWeight(75)
		project__title_label.setFont(font)
		project__title_label.setStyleSheet("color: rgb(255, 255, 255);\n"
										   "background-color: rgb(148, 0, 2,.4);\n"
										   "border-radius:8px;\n"
										   "font-size:30px;\n"
										   "\n"
										   "")
		project__title_label.setLineWidth(4)
		project__title_label.setAlignment(QtCore.Qt.AlignCenter)
		project__title_label.setObjectName("project__title_label")
		Ui_ProjectPage.add_project_btn = QtWidgets.QPushButton(project_page)
		Ui_ProjectPage.add_project_btn.setGeometry(QtCore.QRect(24, 470, 100, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		Ui_ProjectPage.add_project_btn.setFont(font)
		Ui_ProjectPage.add_project_btn.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		Ui_ProjectPage.add_project_btn.setLayoutDirection(QtCore.Qt.LeftToRight)
		Ui_ProjectPage.add_project_btn.setStyleSheet("background-color: rgb(0, 0, 0,.9);\n"
									  "color:white;\n"
									  "border-radius:5px;")
		icon = QtGui.QIcon()
		icon.addPixmap(QtGui.QPixmap(":/Icons/Assets/AddIcon.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
		Ui_ProjectPage.add_project_btn.setIcon(icon)
		Ui_ProjectPage.add_project_btn.setIconSize(QtCore.QSize(16, 16))
		Ui_ProjectPage.add_project_btn.setObjectName("add_project_btn")
		project_info = QtWidgets.QGroupBox(project_page)
		project_info.setGeometry(QtCore.QRect(318, 10, 731, 501))
		project_info.setStyleSheet("color: rgb(255, 255, 255);\n"
								   "border:none;\n"
								   "")
		project_info.setTitle("")
		project_info.setObjectName("project_info")
		project_bg = QtWidgets.QLabel(project_info)
		project_bg.setEnabled(True)
		project_bg.setGeometry(QtCore.QRect(0, 0, 731, 500))
		project_bg.setAutoFillBackground(False)
		project_bg.setStyleSheet("color: rgb(255, 255, 255);\n"
								 "background-color: rgb(148, 0, 2,.4);\n"
								 "border-radius:8px;")
		project_bg.setText("")
		project_bg.setTextFormat(QtCore.Qt.MarkdownText)
		project_bg.setAlignment(QtCore.Qt.AlignLeading | QtCore.Qt.AlignLeft | QtCore.Qt.AlignTop)
		project_bg.setObjectName("project_bg")
		Ui_ProjectPage.project_label = QtWidgets.QLineEdit(project_info)
		Ui_ProjectPage.project_label.setGeometry(QtCore.QRect(30, 10, 541, 61))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		font.setBold(True)
		font.setWeight(75)
		Ui_ProjectPage.project_label.setFont(font)
		Ui_ProjectPage.project_label.setStyleSheet("font-size:30px;\n"
									"\n"
									"")
		Ui_ProjectPage.project_label.setObjectName("project_label")
		startdate_label = QtWidgets.QLabel(project_info)
		startdate_label.setGeometry(QtCore.QRect(30, 160, 101, 24))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		font.setBold(True)
		font.setWeight(75)
		startdate_label.setFont(font)
		startdate_label.setStyleSheet("font-size:20px;")
		startdate_label.setObjectName("startdate_label")
		end_date_label = QtWidgets.QLabel(project_info)
		end_date_label.setGeometry(QtCore.QRect(30, 190, 101, 24))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		font.setBold(True)
		font.setWeight(75)
		end_date_label.setFont(font)
		end_date_label.setStyleSheet("font-size:20px;")
		end_date_label.setObjectName("end_date_label")
		client_label = QtWidgets.QLabel(project_info)
		client_label.setGeometry(QtCore.QRect(30, 80, 101, 24))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		font.setBold(True)
		font.setWeight(75)
		client_label.setFont(font)
		client_label.setStyleSheet("font-size:20px;")
		client_label.setObjectName("client_label")
		scope_label = QtWidgets.QLabel(project_info)
		scope_label.setGeometry(QtCore.QRect(30, 360, 101, 24))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		font.setBold(True)
		font.setWeight(75)
		scope_label.setFont(font)
		scope_label.setStyleSheet("font-size:20px;")
		scope_label.setObjectName("scope_label")
		site_label = QtWidgets.QLabel(project_info)
		site_label.setGeometry(QtCore.QRect(30, 110, 101, 24))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		font.setBold(True)
		font.setWeight(75)
		site_label.setFont(font)
		site_label.setStyleSheet("font-size:20px;")
		site_label.setObjectName("site_label")
		quantity_label = QtWidgets.QLabel(project_info)
		quantity_label.setGeometry(QtCore.QRect(30, 230, 101, 24))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		font.setBold(True)
		font.setWeight(75)
		quantity_label.setFont(font)
		quantity_label.setStyleSheet("font-size:20px;")
		quantity_label.setObjectName("quantity_label")
		unit_price_label = QtWidgets.QLabel(project_info)
		unit_price_label.setGeometry(QtCore.QRect(30, 260, 101, 24))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		font.setBold(True)
		font.setWeight(75)
		unit_price_label.setFont(font)
		unit_price_label.setStyleSheet("font-size:20px;")
		unit_price_label.setObjectName("unit_price_label")
		amount_label = QtWidgets.QLabel(project_info)
		amount_label.setGeometry(QtCore.QRect(30, 290, 101, 24))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		font.setBold(True)
		font.setWeight(75)
		amount_label.setFont(font)
		amount_label.setStyleSheet("font-size:20px;")
		amount_label.setObjectName("amount_label")
		Ui_ProjectPage.DEstart_date = QtWidgets.QDateEdit(project_info)
		Ui_ProjectPage.DEstart_date.setGeometry(QtCore.QRect(130, 160, 121, 24))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		Ui_ProjectPage.DEstart_date.setFont(font)
		Ui_ProjectPage.DEstart_date.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		Ui_ProjectPage.DEstart_date.setContextMenuPolicy(QtCore.Qt.DefaultContextMenu)
		Ui_ProjectPage.DEstart_date.setAutoFillBackground(False)
		Ui_ProjectPage.DEstart_date.setStyleSheet("font-size:20px;\n"
								   "background-color: transparent;\n"
								   "border:none;\n"
								   "\n"
								   "\n"
								   "")
		Ui_ProjectPage.DEstart_date.setWrapping(False)
		Ui_ProjectPage.DEstart_date.setFrame(False)
		Ui_ProjectPage.DEstart_date.setAccelerated(False)
		Ui_ProjectPage.DEstart_date.setCorrectionMode(QtWidgets.QAbstractSpinBox.CorrectToPreviousValue)
		Ui_ProjectPage.DEstart_date.setKeyboardTracking(True)
		Ui_ProjectPage.DEstart_date.setProperty("showGroupSeparator", False)
		Ui_ProjectPage.DEstart_date.setCalendarPopup(True)
		Ui_ProjectPage.DEstart_date.setDate(QtCore.QDate(2021, 1, 1))
		Ui_ProjectPage.DEstart_date.setObjectName("Ui_ProjectPage.DEstart_date")
		Ui_ProjectPage.DEend_date = QtWidgets.QDateEdit(project_info)
		Ui_ProjectPage.DEend_date.setGeometry(QtCore.QRect(130, 190, 121, 24))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		Ui_ProjectPage.DEend_date.setFont(font)
		Ui_ProjectPage.DEend_date.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		Ui_ProjectPage.DEend_date.setStyleSheet("font-size:20px;\n"
								 "background-color: transparent;\n"
								 "border:none;\n"
								 "")
		Ui_ProjectPage.DEend_date.setFrame(False)
		Ui_ProjectPage.DEend_date.setCalendarPopup(True)
		Ui_ProjectPage.DEend_date.setDate(QtCore.QDate(2025, 1, 1))
		Ui_ProjectPage.DEend_date.setObjectName("Ui_ProjectPage.DEend_date")
		Ui_ProjectPage.LBclient_info = QtWidgets.QLineEdit(project_info)
		Ui_ProjectPage.LBclient_info.setGeometry(QtCore.QRect(130, 80, 471, 24))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		Ui_ProjectPage.LBclient_info.setFont(font)
		Ui_ProjectPage.LBclient_info.setStyleSheet("font-size:20px;\n"
									"background-color: transparent;\n"
									"border:none;")
		Ui_ProjectPage.LBclient_info.setObjectName("Ui_ProjectPage.LBclient_info")
		Ui_ProjectPage.LBsite_info = QtWidgets.QLineEdit(project_info)
		Ui_ProjectPage.LBsite_info.setGeometry(QtCore.QRect(130, 110, 471, 24))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		Ui_ProjectPage.LBsite_info.setFont(font)
		Ui_ProjectPage.LBsite_info.setStyleSheet("font-size:20px;\n"
								  "background-color: transparent;\n"
								  "border:none;")
		Ui_ProjectPage.LBsite_info.setObjectName("Ui_ProjectPage.LBsite_info")
		Ui_ProjectPage.LBquantity_info = QtWidgets.QLineEdit(project_info)
		Ui_ProjectPage.LBquantity_info.setGeometry(QtCore.QRect(130, 230, 81, 24))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		Ui_ProjectPage.LBquantity_info.setFont(font)
		Ui_ProjectPage.LBquantity_info.setStyleSheet("font-size:20px;\n"
									  "background-color: transparent;\n"
									  "border:none;")
		Ui_ProjectPage.LBquantity_info.setObjectName("Ui_ProjectPage.LBquantity_info")

		Ui_ProjectPage.LBunitname = QtWidgets.QLineEdit(project_info)
		Ui_ProjectPage.LBunitname.setGeometry(QtCore.QRect(225, 230, 150, 24))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		Ui_ProjectPage.LBunitname.setFont(font)
		Ui_ProjectPage.LBunitname.setStyleSheet("font-size:20px;\n"
													"background-color: transparent;\n"
													"border:none;")
		Ui_ProjectPage.LBunitname.setObjectName("Ui_ProjectPage.LBunitname")

		dash = QtWidgets.QLineEdit(project_info)
		dash.setGeometry(QtCore.QRect(210, 230, 15, 24))
		dash.setFont(font)
		dash.setStyleSheet("font-size:20px;\n"
												"background-color: transparent;\n"
												"border:none;")
		dash.setObjectName("dash")


		Ui_ProjectPage.LBunit_price_info = QtWidgets.QLineEdit(project_info)
		Ui_ProjectPage.LBunit_price_info.setGeometry(QtCore.QRect(130, 260, 471, 24))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		Ui_ProjectPage.LBunit_price_info.setFont(font)
		Ui_ProjectPage.LBunit_price_info.setStyleSheet("font-size:20px;\n"
										"background-color: transparent;\n"
										"border:none;")
		Ui_ProjectPage.LBunit_price_info.setObjectName("Ui_ProjectPage.LBunit_price_info")
		Ui_ProjectPage.LBamount_info = QtWidgets.QLineEdit(project_info)
		Ui_ProjectPage.LBamount_info.setGeometry(QtCore.QRect(130, 290, 471, 24))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(15)
		Ui_ProjectPage.LBamount_info.setFont(font)
		Ui_ProjectPage.LBamount_info.setStyleSheet("\n"
									"background-color: transparent;\n"
									"border:none;")
		Ui_ProjectPage.LBamount_info.setObjectName("Ui_ProjectPage.LBamount_info")
		Ui_ProjectPage.edit_btn = QtWidgets.QPushButton(project_info)
		Ui_ProjectPage.edit_btn.setGeometry(QtCore.QRect(610, 455, 100, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		Ui_ProjectPage.edit_btn.setFont(font)
		Ui_ProjectPage.edit_btn.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		Ui_ProjectPage.edit_btn.setStyleSheet("background-color: rgb(0, 0, 0,.9);\n"
										"color:white;\n"
										"border-radius:5px;")
		icon1 = QtGui.QIcon()
		icon1.addPixmap(QtGui.QPixmap(":/Icons/Assets/EditIcon.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
		Ui_ProjectPage.edit_btn.setIcon(icon1)
		Ui_ProjectPage.edit_btn.setIconSize(QtCore.QSize(16, 16))
		Ui_ProjectPage.edit_btn.setShortcut("")
		Ui_ProjectPage.edit_btn.setObjectName("edit_btn")

		#add cancel
		Ui_ProjectPage.cancel_btn = QtWidgets.QPushButton(project_info)
		Ui_ProjectPage.cancel_btn.setGeometry(QtCore.QRect(610, 455, 100, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		Ui_ProjectPage.cancel_btn.setFont(font)
		Ui_ProjectPage.cancel_btn.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		Ui_ProjectPage.cancel_btn.setStyleSheet("background-color: rgb(0, 0, 0,.9);\n"
							   "color:white;\n"
							   "border-radius:5px;")
		icon1 = QtGui.QIcon()
		icon1.addPixmap(QtGui.QPixmap(":/Icons/Assets/EditIcon.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
		Ui_ProjectPage.cancel_btn.setIcon(icon1)
		Ui_ProjectPage.cancel_btn.setIconSize(QtCore.QSize(16, 16))
		Ui_ProjectPage.cancel_btn.setShortcut("")
		Ui_ProjectPage.cancel_btn.setObjectName("cancel_btn")
		Ui_ProjectPage.cancel_btn.hide()

		# add save
		Ui_ProjectPage.save_btn = QtWidgets.QPushButton(project_info)
		Ui_ProjectPage.save_btn.setGeometry(QtCore.QRect(610, 410, 100, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		Ui_ProjectPage.save_btn.setFont(font)
		Ui_ProjectPage.save_btn.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		Ui_ProjectPage.save_btn.setStyleSheet("background-color: rgb(0, 0, 0,.9);\n"
								 "color:white;\n"
								 "border-radius:5px;")
		icon1 = QtGui.QIcon()
		icon1.addPixmap(QtGui.QPixmap(":/Icons/Assets/UploadIcon.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
		Ui_ProjectPage.save_btn.setIcon(icon1)
		Ui_ProjectPage.save_btn.setIconSize(QtCore.QSize(16, 16))
		Ui_ProjectPage.save_btn.setShortcut("")
		Ui_ProjectPage.save_btn.setObjectName("save_btn")
		Ui_ProjectPage.save_btn.hide()


		Ui_ProjectPage.open_project_btn = QtWidgets.QPushButton(project_info)
		Ui_ProjectPage.open_project_btn.setGeometry(QtCore.QRect(610, 20, 100, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		Ui_ProjectPage.open_project_btn.setFont(font)
		Ui_ProjectPage.open_project_btn.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		Ui_ProjectPage.open_project_btn.setStyleSheet("background-color: rgb(0, 0, 0,.9);\n"
									   "color:white;\n"
									   "border-radius:5px;")
		icon2 = QtGui.QIcon()
		icon2.addPixmap(QtGui.QPixmap(":/Icons/Assets/OpenIcon.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
		Ui_ProjectPage.open_project_btn.setIcon(icon2)
		Ui_ProjectPage.open_project_btn.setObjectName("open_project_btn")
		scope_label_2 = QtWidgets.QLabel(project_info)
		scope_label_2.setGeometry(QtCore.QRect(30, 330, 101, 24))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		font.setBold(True)
		font.setWeight(75)
		scope_label_2.setFont(font)
		scope_label_2.setStyleSheet("font-size:20px;")
		scope_label_2.setObjectName("scope_label_2")
		Ui_ProjectPage.LBscope = QtWidgets.QPlainTextEdit(project_info)
		Ui_ProjectPage.LBscope.setGeometry(QtCore.QRect(130, 360, 451, 111))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(15)
		Ui_ProjectPage.LBscope.setFont(font)
		Ui_ProjectPage.LBscope.setStyleSheet("")
		Ui_ProjectPage.LBscope.setObjectName("plainTextEdit")
		Ui_ProjectPage.CBcategory_input = QtWidgets.QComboBox(project_info)
		Ui_ProjectPage.CBcategory_input.setGeometry(QtCore.QRect(130, 330, 231, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(15)
		Ui_ProjectPage.CBcategory_input.setFont(font)
		Ui_ProjectPage.CBcategory_input.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		Ui_ProjectPage.CBcategory_input.setStyleSheet("border-radius:5px;")
		Ui_ProjectPage.CBcategory_input.setObjectName("Ui_ProjectPage.CBcategory_input")
		Ui_ProjectPage.CBcategory_input.addItem("")
		Ui_ProjectPage.CBcategory_input.addItem("")
		Ui_ProjectPage.CBcategory_input.addItem("")
		Ui_ProjectPage.CBcategory_input.addItem("")
		Ui_ProjectPage.CBcategory_input.addItem("")
		Ui_ProjectPage.CBcategory_input.addItem("")
		colon_label = QtWidgets.QPlainTextEdit(project_info)
		colon_label.setGeometry(QtCore.QRect(115, 77, 21, 61))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(16)
		font.setBold(True)
		font.setWeight(75)
		colon_label.setFont(font)
		colon_label.setStyleSheet("\n"
								  "border:none;")
		colon_label.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
		colon_label.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
		colon_label.setObjectName("colon_label")
		colon_label_2 = QtWidgets.QPlainTextEdit(project_info)
		colon_label_2.setGeometry(QtCore.QRect(115, 327, 21, 61))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(16)
		font.setBold(True)
		font.setWeight(75)
		colon_label_2.setFont(font)
		colon_label_2.setStyleSheet("\n"
									"border:none;")
		colon_label_2.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
		colon_label_2.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
		colon_label_2.setObjectName("colon_label_2")
		colon_label_3 = QtWidgets.QPlainTextEdit(project_info)
		colon_label_3.setGeometry(QtCore.QRect(115, 157, 21, 61))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(16)
		font.setBold(True)
		font.setWeight(75)
		colon_label_3.setFont(font)
		colon_label_3.setStyleSheet("\n"
									"border:none;")
		colon_label_3.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
		colon_label_3.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
		colon_label_3.setObjectName("colon_label_3")
		colon_label_4 = QtWidgets.QPlainTextEdit(project_info)
		colon_label_4.setGeometry(QtCore.QRect(115, 227, 21, 91))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(16)
		font.setBold(True)
		font.setWeight(75)
		colon_label_4.setFont(font)
		colon_label_4.setStyleSheet("\n"
									"border:none;")
		colon_label_4.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
		colon_label_4.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
		colon_label_4.setObjectName("colon_label_4")
		Ui_ProjectPage.remove_project_btn = QtWidgets.QPushButton(project_page)
		Ui_ProjectPage.remove_project_btn.setGeometry(QtCore.QRect(167, 470, 100, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		Ui_ProjectPage.remove_project_btn.setFont(font)
		Ui_ProjectPage.remove_project_btn.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		Ui_ProjectPage.remove_project_btn.setStyleSheet("background-color: rgb(0, 0, 0,.9);\n"
										 "color:white;\n"
										 "border-radius:5px;")
		icon3 = QtGui.QIcon()
		icon3.addPixmap(QtGui.QPixmap(":/Icons/Assets/RemoveIcon.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
		Ui_ProjectPage.remove_project_btn.setIcon(icon3)
		Ui_ProjectPage.remove_project_btn.setIconSize(QtCore.QSize(16, 31))
		Ui_ProjectPage.remove_project_btn.setObjectName("remove_project_btn")
		employee_list = QtWidgets.QScrollArea(project_page)
		employee_list.setEnabled(True)
		employee_list.setGeometry(QtCore.QRect(10, 176, 281, 281))
		employee_list.setStyleSheet("background-color: rgb(104, 0, 0,.1);\n"
									"border-radius:8px;")
		employee_list.setWidgetResizable(True)
		employee_list.setObjectName("employee_list")
		EmployeeListScroll = QtWidgets.QWidget()
		EmployeeListScroll.setEnabled(True)
		EmployeeListScroll.setGeometry(QtCore.QRect(0, 0, 281, 281))
		EmployeeListScroll.setObjectName("EmployeeListScroll")
		Ui_ProjectPage.listWidget = QtWidgets.QListWidget(EmployeeListScroll)
		Ui_ProjectPage.listWidget.setGeometry(QtCore.QRect(0, 0, 281, 281))
		Ui_ProjectPage.listWidget.setLayoutDirection(QtCore.Qt.RightToLeft)
		Ui_ProjectPage.listWidget.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOn)
		Ui_ProjectPage.listWidget.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
		Ui_ProjectPage.listWidget.setObjectName("listWidget")
		Ui_ProjectPage.listWidget.setStyleSheet("background-color: rgb(167, 167, 167,.4);\n"
					   "border-radius:5px;\n"
					   "font-size:16px;\n"
					   "color:white;\n")

		item = QtWidgets.QListWidgetItem()
		item.setTextAlignment(QtCore.Qt.AlignTrailing | QtCore.Qt.AlignVCenter)
		Ui_ProjectPage.listWidget.addItem(item)
		employee_list.setWidget(EmployeeListScroll)
		SearchGroup = QtWidgets.QGroupBox(project_page)
		SearchGroup.setGeometry(QtCore.QRect(20, 120, 261, 41))
		SearchGroup.setStyleSheet("color:white;\n"
								  "border-radius:5px;\n"
								  " border-bottom:3px  solid white;\n"
								  " border-left:3px  solid white;\n"
								  " border-right:3px  solid white;\n"
								  " border-top:3px  solid white;")
		SearchGroup.setTitle("")
		SearchGroup.setObjectName("SearchGroup")
		Ui_ProjectPage.search_area = QtWidgets.QLineEdit(SearchGroup)
		Ui_ProjectPage.search_area.setGeometry(QtCore.QRect(0, 0, 211, 41))
		Ui_ProjectPage.search_area.setStyleSheet("padding-left:10px;\n"
								  "background-color: rgba(255, 255, 255,0.2);\n"
								  "font-size:16px;\n"
								  "border: none;\n"
								  "color:white\n"
								  "")
		Ui_ProjectPage.search_area.setText("")
		Ui_ProjectPage.search_area.setCursorPosition(0)
		Ui_ProjectPage.search_area.setObjectName("search_area")
		search_button = QtWidgets.QPushButton(SearchGroup)
		search_button.setGeometry(QtCore.QRect(210, 0, 51, 41))
		search_button.setStyleSheet("border-radius:5px;")
		search_button.setText("")
		icon4 = QtGui.QIcon()
		icon4.addPixmap(QtGui.QPixmap(":/Icons/Assets/SearchIcon.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
		search_button.setIcon(icon4)
		search_button.setIconSize(QtCore.QSize(20, 20))
		search_button.setObjectName("search_button")
		project_info.raise_()
		project__title_label.raise_()
		Ui_ProjectPage.add_project_btn.raise_()
		Ui_ProjectPage.remove_project_btn.raise_()
		employee_list.raise_()
		SearchGroup.raise_()


		_translate = QtCore.QCoreApplication.translate
		project__title_label.setText(_translate("DashbaordWindow", "Projects"))
		Ui_ProjectPage.add_project_btn.setText(_translate("DashbaordWindow", "  Add"))
		Ui_ProjectPage.project_label.setText(_translate("DashbaordWindow", "Project Title"))
		startdate_label.setText(_translate("DashbaordWindow", "Start Date"))
		end_date_label.setText(_translate("DashbaordWindow", "End Date"))
		client_label.setText(_translate("DashbaordWindow", "Client"))
		scope_label.setText(_translate("DashbaordWindow", "Scope"))
		site_label.setText(_translate("DashbaordWindow", "Site"))
		quantity_label.setText(_translate("DashbaordWindow", "Quantity"))
		unit_price_label.setText(_translate("DashbaordWindow", "Unit Price"))
		amount_label.setText(_translate("DashbaordWindow", "Amount"))
		Ui_ProjectPage.LBclient_info.setPlaceholderText(_translate("DashbaordWindow", "Client Name"))
		Ui_ProjectPage.LBsite_info.setPlaceholderText(_translate("DashbaordWindow", "Project Site"))
		Ui_ProjectPage.LBquantity_info.setPlaceholderText(_translate("DashbaordWindow", "Quantity"))
		Ui_ProjectPage.LBunit_price_info.setPlaceholderText(_translate("DashbaordWindow", "Unit Price"))
		Ui_ProjectPage.LBamount_info.setPlaceholderText(_translate("DashbaordWindow", "Contract Amount"))
		Ui_ProjectPage.LBunitname.setPlaceholderText(_translate("DashbaordWindow", "Unit"))
		dash.setText(_translate("DashbaordWindow", "-"))

		Ui_ProjectPage.edit_btn.setText(_translate("DashbaordWindow", "  Edit"))
		Ui_ProjectPage.cancel_btn.setText(_translate("DashbaordWindow", "  Cancel"))
		Ui_ProjectPage.save_btn.setText(_translate("DashbaordWindow", "  Save"))
		Ui_ProjectPage.open_project_btn.setText(_translate("DashbaordWindow", "  Open"))
		scope_label_2.setText(_translate("DashbaordWindow", "Category"))
		Ui_ProjectPage.LBscope.setPlaceholderText(_translate("DashbaordWindow", "Project Scope\n"))
		Ui_ProjectPage.CBcategory_input.setItemText(0, _translate("DashbaordWindow", "Mechanical Works"))
		Ui_ProjectPage.CBcategory_input.setItemText(1, _translate("DashbaordWindow", "Civil Works"))
		Ui_ProjectPage.CBcategory_input.setItemText(2, _translate("DashbaordWindow", "Electrical Works"))
		Ui_ProjectPage.CBcategory_input.setItemText(3, _translate("DashbaordWindow", "Plumbing Works"))
		Ui_ProjectPage.CBcategory_input.setItemText(4, _translate("DashbaordWindow", "Architectural Works"))
		Ui_ProjectPage.CBcategory_input.setItemText(5, _translate("DashbaordWindow", "Fire Protection"))
		colon_label.setPlainText(_translate("DashbaordWindow", ":\n"
															   ":\n"
															   ""))
		colon_label_2.setPlainText(_translate("DashbaordWindow", ":\n"
																 ":\n"
																 ""))
		colon_label_3.setPlainText(_translate("DashbaordWindow", ":\n"
																 ":\n"
																 ""))
		colon_label_4.setPlainText(_translate("DashbaordWindow", ":\n"
																 ":\n"
																 ":"))


		colon_label.setEnabled(False)
		colon_label_2.setEnabled(False)
		colon_label_3.setEnabled(False)
		colon_label_4.setEnabled(False)
		dash.setEnabled(False)

		
		Ui_ProjectPage.remove_project_btn.setText(_translate("DashbaordWindow", "  Remove"))


		Ui_ProjectPage.search_area.setPlaceholderText(_translate("DashbaordWindow", "Search Project"))

		#functions

		#load employee Lisy

		Ui_ProjectPage.get_project(Ui_ProjectPage.listWidget)
		Ui_ProjectPage.LBscope.setReadOnly(True)

		# selection function
		Ui_ProjectPage.listWidget.itemClicked.connect(Ui_ProjectPage.get_info)

		# Default Input Readonly
		Ui_ProjectPage.set_readonly1(False,employee_list)

		#btn functions
		Ui_ProjectPage.add_project_btn.clicked.connect(lambda :Ui_ProjectForm.showForm())
		Ui_ProjectPage.edit_btn.clicked.connect(lambda: Ui_ProjectPage.set_readonly(True,employee_list))
		Ui_ProjectPage.cancel_btn.clicked.connect(lambda : Ui_ProjectPage.cancel_dialog(employee_list))
		Ui_ProjectPage.save_btn.clicked.connect(lambda :Ui_ProjectPage.saveEdit(employee_list))
		Ui_ProjectPage.remove_project_btn.clicked.connect(lambda: Ui_ProjectPage.removeProject(employee_list))


		#load Project Form
		Ui_ProjectForm.addProjectForm(DashbaordWindow)

		#adds
		my_regex = QtCore.QRegExp("^[0-9]*$")

		my_validator = QtGui.QRegExpValidator(my_regex,Ui_ProjectPage.LBquantity_info)
		Ui_ProjectPage.LBquantity_info.setValidator(my_validator)

		my_regex = QtCore.QRegExp("^\\d{1,6}(\\.\\d{1,2})?$")

		my_validator = QtGui.QRegExpValidator(my_regex, Ui_ProjectPage.LBunit_price_info)
		Ui_ProjectPage.LBunit_price_info.setValidator(my_validator)


		Ui_ProjectPage.LBunit_price_info.textEdited.connect(lambda: Ui_ProjectPage.getAmount())
		Ui_ProjectPage.LBquantity_info.textEdited.connect(lambda: Ui_ProjectPage.getAmount())
		Ui_ProjectPage.open_project_btn.hide()

		Ui_ProjectPage.edit_btn.hide()

		# search
		Ui_ProjectPage.search_area.textChanged.connect(lambda: Ui_ProjectPage.search(Ui_ProjectPage.listWidget, Ui_ProjectPage.search_area.text()))


class Ui_ProjectForm(object):
	DisplayGroup2=""
	project_title_input=""
	client_input=""
	category_input=""
	site_input=""
	start_date_input=""
	end_date_2=""
	quantity_input=""
	unitname_input = ""
	unit_input=""
	contract_input=""
	scope_input=""

	def getAmount():
		quantity = Ui_ProjectForm.quantity_input.text()
		unit = Ui_ProjectForm.unit_input.text()
		if (len(quantity)>0) & (len(unit)>0):
			x=float(quantity)*float(unit)
			x= "{:.2f}".format(x)
			Ui_ProjectForm.contract_input.setText(str(x))



	def submitForm():
		title = Ui_ProjectForm.project_title_input.text()
		client = Ui_ProjectForm.client_input.text()
		site = Ui_ProjectForm.site_input.text()
		quantity = Ui_ProjectForm.quantity_input.text()
		unit = Ui_ProjectForm.unit_input.text()
		contract = Ui_ProjectForm.contract_input.text()
		scope = Ui_ProjectForm.scope_input.toPlainText()
		unitname = Ui_ProjectForm.unitname_input.text()

		if (title == "") | (client == "") | (site == "") | (quantity == "") | (unit == "") | (contract == "") | (
				scope == "")| ( unitname == ""):
			Ui_ProjectForm.show_dialog("Please complete the form first")
		elif (float(contract) <= 0):
			Ui_ProjectForm.show_dialog("Invalid Amount")
		elif Ui_ProjectForm.start_date_input.date() >= Ui_ProjectForm.end_date_2.date():
			Ui_ProjectForm.show_dialog("Invalid Date Setup")
		else:
			try:

				start = (
					f"{Ui_ProjectForm.start_date_input.date().year()},{Ui_ProjectForm.start_date_input.date().month()},{Ui_ProjectForm.start_date_input.date().day()}")
				end = (
					f"{Ui_ProjectForm.end_date_2.date().year()},{Ui_ProjectForm.end_date_2.date().month()},{Ui_ProjectForm.end_date_2.date().day()}")

				category = Ui_ProjectForm.category_input.currentText()

				cursor = con.cursor()
				query1 = "INSERT INTO projects(project_title, project_clientname, project_site, project_start, project_end, project_category, project_quantity,project_unit, project_unitprice, project_amount, project_scope) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"

				query5 = (title, client, site, start, end, category, quantity,unitname, unit, contract, scope)

				cursor.execute(query1, query5)
				con.commit()

				Ui_Activity.record_activity("admin",f"Add Project Record : {title}")


				msgBox = QMessageBox()
				msgBox.setIcon(QMessageBox.Information)
				msgBox.setText("Project was added successfully")
				msgBox.setWindowTitle("Message Alert")
				msgBox.setStandardButtons(QMessageBox.Ok)
				msgBox.buttonClicked.connect(msgBox.close)

				returnValue = msgBox.exec()
				if returnValue == QMessageBox.Ok:
					Ui_ProjectPage.get_project(Ui_ProjectPage.listWidget)
					Ui_ProjectForm.DisplayGroup2.hide()
					Ui_ProjectForm.DisplayGroup2.hide()
					Ui_ProjectForm.project_title_input.setText("")
					Ui_ProjectForm.client_input.setText("")
					Ui_ProjectForm.category_input.setCurrentIndex(0)
					Ui_ProjectForm.site_input.setText("")
					Ui_ProjectForm.quantity_input.setText("")
					Ui_ProjectForm.unit_input.setText("")
					Ui_ProjectForm.contract_input.setText("")
					Ui_ProjectForm.scope_input.setPlainText("")
					now = QDate.currentDate()
					Ui_ProjectForm.start_date_input.setDate(now)
					Ui_ProjectForm.end_date_2.setDate(now)
					Ui_ProjectForm.unitname_input.setText("")

			except:
				Dialog.msg_dialog(str(sys.exc_info()))  


	def keyPressEvent(label):
		text = label.text()
		if len(text)>0:
			label.setText(text.title())

	def cancel_dialog(msg):
		msgBox = QMessageBox()
		msgBox.setIcon(QMessageBox.Information)
		msgBox.setText(msg)
		msgBox.setWindowTitle("Message Alert")
		msgBox.setStandardButtons(QMessageBox.Ok | QMessageBox.Cancel)
		msgBox.buttonClicked.connect(msgBox.close)

		returnValue = msgBox.exec()
		if returnValue == QMessageBox.Ok:
			return True

	def show_dialog(msg):
		msgBox = QMessageBox()
		msgBox.setIcon(QMessageBox.Information)
		msgBox.setText(msg)
		msgBox.setWindowTitle("Message Alert")
		msgBox.setStandardButtons(QMessageBox.Ok)
		msgBox.buttonClicked.connect(msgBox.close)

		returnValue = msgBox.exec()


	def showForm():
		Ui_ProjectForm.DisplayGroup2.show()
		now = QDate.currentDate()
		now=now.addDays(-29)

		now2 = QDate.currentDate()
		# set min max
		Ui_ProjectForm.start_date_input.setMinimumDate(now)
		Ui_ProjectForm.start_date_input.setDate(now2)



	def hideForm():
		x = Ui_ProjectForm.cancel_dialog("Are you sure you want to cancel?")
		if x:
			Ui_ProjectForm.DisplayGroup2.hide()
			Ui_ProjectForm.project_title_input.setText("")
			Ui_ProjectForm.client_input.setText("")
			Ui_ProjectForm.category_input.setCurrentIndex(0)
			Ui_ProjectForm.site_input.setText("")
			Ui_ProjectForm.quantity_input.setText("")
			Ui_ProjectForm.unit_input.setText("")
			Ui_ProjectForm.contract_input.setText("")
			Ui_ProjectForm.scope_input.setPlainText("")
			now = QDate.currentDate()
			Ui_ProjectForm.start_date_input.setDate(now)
			Ui_ProjectForm.end_date_2.setDate(now)
			Ui_ProjectForm.unitname_input.setText("")


	def clearForm():
		x= Ui_ProjectForm.cancel_dialog("Are you sure you want to clear?")
		if x:
			Ui_ProjectForm.project_title_input.setText("")
			Ui_ProjectForm.client_input.setText("")
			Ui_ProjectForm.category_input.setCurrentIndex(0)
			Ui_ProjectForm.site_input.setText("")
			Ui_ProjectForm.quantity_input.setText("")
			Ui_ProjectForm.unit_input.setText("")
			Ui_ProjectForm.unitname_input.setText("")
			Ui_ProjectForm.contract_input.setText("")
			Ui_ProjectForm.scope_input.setPlainText("")
			now = QDate.currentDate()
			Ui_ProjectForm.start_date_input.setDate(now)
			Ui_ProjectForm.end_date_2.setDate(now)


	def addProjectForm(DashbaordWindow):
		Ui_ProjectForm.DisplayGroup2 = QtWidgets.QGroupBox(DashbaordWindow)
		Ui_ProjectForm.DisplayGroup2.setGeometry(QtCore.QRect(0, 0, 1230, 703))
		Ui_ProjectForm.DisplayGroup2.setStyleSheet("\n""")
		Ui_ProjectForm.DisplayGroup2.setTitle("")
		Ui_ProjectForm.DisplayGroup2.setObjectName("DisplayGroup")
		Ui_ProjectForm.DisplayGroup2.hide()

		# Adds
		Bg = QtWidgets.QLabel(Ui_ProjectForm.DisplayGroup2)
		Bg.setEnabled(True)
		Bg.setGeometry(QtCore.QRect(0, 0, 1230, 703))
		Bg.setMinimumSize(QtCore.QSize(1230, 703))
		Bg.setMaximumSize(QtCore.QSize(1230, 703))
		Bg.setStyleSheet("background-color: rgb(0, 0, 0,.9);")

		add_project_group = QtWidgets.QGroupBox(Ui_ProjectForm.DisplayGroup2)
		add_project_group.setGeometry(QtCore.QRect(330, 40, 561, 621))
		add_project_group.setStyleSheet(".QLabel{color:white;}\n"
								   ".QPushButton{color:white;}\n"
								   ".QGroupBox{border:none;}\n")
		add_project_group.setTitle("")
		add_project_group.setObjectName("add_project_group")

		#con
		add_project_bg = QtWidgets.QLabel(add_project_group)
		add_project_bg.setGeometry(QtCore.QRect(0, 0, 561, 621))
		add_project_bg.setStyleSheet("color: rgb(255, 255, 255);\n"
									"background-color: rgba(148, 0, 2,.6);\n"
									"\n"
									"border-radius:10px;border:2px solid white;")
		add_project_bg.setText("")
		add_project_bg.setObjectName("add_project_bg")
		add_project_label = QtWidgets.QLabel(add_project_group)
		add_project_label.setGeometry(QtCore.QRect(200, 17, 481, 41))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(26)
		font.setBold(True)
		font.setWeight(75)
		add_project_label.setFont(font)
		add_project_label.setStyleSheet("background:transparent;")
		add_project_label.setObjectName("add_project_label")
		Ui_ProjectForm.project_title_input = QtWidgets.QLineEdit(add_project_group)
		Ui_ProjectForm.project_title_input.setGeometry(QtCore.QRect(40, 90, 481, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		Ui_ProjectForm.project_title_input.setFont(font)
		Ui_ProjectForm.project_title_input.setStyleSheet("font-size:12px;\n"
"border-radius:5px;")
		Ui_ProjectForm.project_title_input.setObjectName("project_title_input")
		project_title_label = QtWidgets.QLabel(add_project_group)
		project_title_label.setGeometry(QtCore.QRect(40, 72, 101, 16))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		project_title_label.setFont(font)
		project_title_label.setStyleSheet("")
		project_title_label.setObjectName("project_title_label")
		client_label_2 = QtWidgets.QLabel(add_project_group)
		client_label_2.setGeometry(QtCore.QRect(40, 135, 101, 16))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		client_label_2.setFont(font)
		client_label_2.setStyleSheet("")
		client_label_2.setObjectName("client_label_2")
		Ui_ProjectForm.client_input = QtWidgets.QLineEdit(add_project_group)
		Ui_ProjectForm.client_input.setGeometry(QtCore.QRect(40, 153, 481, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		Ui_ProjectForm.client_input.setFont(font)
		Ui_ProjectForm.client_input.setStyleSheet("font-size:12px;\n"
"border-radius:5px;")
		Ui_ProjectForm.client_input.setText("")
		Ui_ProjectForm.client_input.setObjectName("client_input")
		category_label = QtWidgets.QLabel(add_project_group)
		category_label.setGeometry(QtCore.QRect(40, 315, 111, 21))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		category_label.setFont(font)
		category_label.setStyleSheet("")
		category_label.setObjectName("category_label")
		Ui_ProjectForm.category_input = QtWidgets.QComboBox(add_project_group)
		Ui_ProjectForm.category_input.setGeometry(QtCore.QRect(40, 335, 231, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		Ui_ProjectForm.category_input.setFont(font)
		Ui_ProjectForm.category_input.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		Ui_ProjectForm.category_input.setStyleSheet("color: rgb(255, 255, 255);\n"
									"background-color: rgba(255,255,255,.2);\n"
									"font-size:15px;\n"
									"border-radius:5px;")
		Ui_ProjectForm.category_input.setObjectName("category_input")
		Ui_ProjectForm.category_input.addItem("")
		Ui_ProjectForm.category_input.addItem("")
		Ui_ProjectForm.category_input.addItem("")
		Ui_ProjectForm.category_input.addItem("")
		Ui_ProjectForm.category_input.addItem("")
		Ui_ProjectForm.category_input.addItem("")
		Ui_ProjectForm.site_input = QtWidgets.QLineEdit(add_project_group)
		Ui_ProjectForm.site_input.setGeometry(QtCore.QRect(40, 213, 481, 30))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		Ui_ProjectForm.site_input.setFont(font)
		Ui_ProjectForm.site_input.setStyleSheet("font-size:12px;\n"
"border-radius:5px;")
		Ui_ProjectForm.site_input.setObjectName("site_input")
		site_label_2 = QtWidgets.QLabel(add_project_group)
		site_label_2.setGeometry(QtCore.QRect(40, 195, 181, 16))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		site_label_2.setFont(font)
		site_label_2.setStyleSheet("")
		site_label_2.setObjectName("site_label_2")
		start_date_label = QtWidgets.QLabel(add_project_group)
		start_date_label.setGeometry(QtCore.QRect(40, 255, 211, 16))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		start_date_label.setFont(font)
		start_date_label.setStyleSheet("")
		start_date_label.setObjectName("start_date_label")
		Ui_ProjectForm.start_date_input = QtWidgets.QDateEdit(add_project_group)
		Ui_ProjectForm.start_date_input.setGeometry(QtCore.QRect(40, 273, 231, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		Ui_ProjectForm.start_date_input.setFont(font)
		Ui_ProjectForm.start_date_input.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		Ui_ProjectForm.start_date_input.setStyleSheet("color:maroon;\n"
												 "background-color:rgb(255, 255, 255);\n"
												 "border-radius:5px;")
		Ui_ProjectForm.start_date_input.setCalendarPopup(True)
		Ui_ProjectForm.start_date_input.setObjectName("start_date_input")
		Ui_ProjectForm.end_date_2 = QtWidgets.QDateEdit(add_project_group)
		Ui_ProjectForm.end_date_2.setGeometry(QtCore.QRect(290, 273, 231, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		Ui_ProjectForm.end_date_2.setFont(font)
		Ui_ProjectForm.end_date_2.setStyleSheet("color:maroon;\n"
												 "background-color:rgb(255, 255, 255);\n"
												 "border-radius:5px;")
		Ui_ProjectForm.end_date_2.setCalendarPopup(True)
		Ui_ProjectForm.end_date_2.setObjectName("end_date_2")
		end_date_label_add = QtWidgets.QLabel(add_project_group)
		end_date_label_add.setGeometry(QtCore.QRect(290, 255, 211, 16))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		end_date_label_add.setFont(font)
		end_date_label_add.setStyleSheet("")
		end_date_label_add.setObjectName("end_date_label_add")
		quantity_label_2 = QtWidgets.QLabel(add_project_group)
		quantity_label_2.setGeometry(QtCore.QRect(290, 315, 111, 21))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		quantity_label_2.setFont(font)
		quantity_label_2.setStyleSheet("")
		quantity_label_2.setObjectName("quantity_label_2")
		Ui_ProjectForm.quantity_input = QtWidgets.QLineEdit(add_project_group)
		Ui_ProjectForm.quantity_input.setGeometry(QtCore.QRect(290, 335, 111, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		Ui_ProjectForm.quantity_input.setFont(font)
		Ui_ProjectForm.quantity_input.setStyleSheet("font-size:12px;\n"
"border-radius:5px;")
		Ui_ProjectForm.quantity_input.setObjectName("quantity_input")

		unitname_label = QtWidgets.QLabel(add_project_group)
		unitname_label.setGeometry(QtCore.QRect(410, 315, 111, 21))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		unitname_label.setFont(font)
		unitname_label.setStyleSheet("")
		unitname_label.setObjectName("unitname_label")
		Ui_ProjectForm.unitname_input = QtWidgets.QLineEdit(add_project_group)
		Ui_ProjectForm.unitname_input.setGeometry(QtCore.QRect(410, 335, 111, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		Ui_ProjectForm.unitname_input.setFont(font)
		Ui_ProjectForm.unitname_input.setStyleSheet("font-size:12px;\n"
													"border-radius:5px;")
		Ui_ProjectForm.unitname_input.setObjectName("unitname_input")


		unit_label = QtWidgets.QLabel(add_project_group)
		unit_label.setGeometry(QtCore.QRect(40, 375, 111, 21))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		unit_label.setFont(font)
		unit_label.setStyleSheet("")
		unit_label.setObjectName("unit_label")



		Ui_ProjectForm.unit_input = QtWidgets.QLineEdit(add_project_group)
		Ui_ProjectForm.unit_input.setGeometry(QtCore.QRect(40, 395, 231, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		Ui_ProjectForm.unit_input.setFont(font)
		Ui_ProjectForm.unit_input.setStyleSheet("font-size:12px;\n"
"border-radius:5px;")
		Ui_ProjectForm.unit_input.setObjectName("unit_input")
		contract_label = QtWidgets.QLabel(add_project_group)
		contract_label.setGeometry(QtCore.QRect(290, 375, 151, 21))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		contract_label.setFont(font)
		contract_label.setStyleSheet("")
		contract_label.setObjectName("contract_label")
		Ui_ProjectForm.contract_input = QtWidgets.QLineEdit(add_project_group)
		Ui_ProjectForm.contract_input.setGeometry(QtCore.QRect(290, 395, 231, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		Ui_ProjectForm.contract_input.setFont(font)
		Ui_ProjectForm.contract_input.setStyleSheet("font-size:12px;\n"
"border-radius:5px;")
		Ui_ProjectForm.contract_input.setObjectName("contract_input")
		BtnClear = QtWidgets.QPushButton(add_project_group)
		BtnClear.setGeometry(QtCore.QRect(40, 560, 101, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		BtnClear.setFont(font)
		BtnClear.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		BtnClear.setStyleSheet("background-color: rgb(0, 0, 0,.9);\n"
"border-radius:8px;\n"
"")
		icon = QtGui.QIcon()
		icon.addPixmap(QtGui.QPixmap(":/Buttons/Asset/FormClearIcon.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
		BtnClear.setIcon(icon)
		BtnClear.setIconSize(QtCore.QSize(30, 30))
		BtnClear.setObjectName("BtnClear")
		BtnCancel = QtWidgets.QPushButton(add_project_group)
		BtnCancel.setGeometry(QtCore.QRect(420, 560, 101, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		BtnCancel.setFont(font)
		BtnCancel.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		BtnCancel.setStyleSheet("background-color: rgb(0, 0, 0,.9);\n"
"border-radius:8px;\n"
"")
		icon1 = QtGui.QIcon()
		icon1.addPixmap(QtGui.QPixmap(":/Buttons/Asset/FormCancelIcon.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
		BtnCancel.setIcon(icon1)
		BtnCancel.setIconSize(QtCore.QSize(30, 30))
		BtnCancel.setObjectName("BtnCancel")
		BtnSubmit = QtWidgets.QPushButton(add_project_group)
		BtnSubmit.setGeometry(QtCore.QRect(300, 560, 101, 31))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		BtnSubmit.setFont(font)
		BtnSubmit.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		BtnSubmit.setStyleSheet("background-color: rgb(0, 0, 0,.9);\n"
"border-radius:8px;\n"
"")
		icon2 = QtGui.QIcon()
		icon2.addPixmap(QtGui.QPixmap(":/Buttons/Asset/FormSubmitIcon.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
		BtnSubmit.setIcon(icon2)
		BtnSubmit.setIconSize(QtCore.QSize(30, 30))
		BtnSubmit.setObjectName("BtnSubmit")
		scope_label = QtWidgets.QLabel(add_project_group)
		scope_label.setGeometry(QtCore.QRect(40, 435, 111, 21))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		scope_label.setFont(font)
		scope_label.setStyleSheet("")
		scope_label.setObjectName("scope_label")
		Ui_ProjectForm.scope_input = QtWidgets.QPlainTextEdit(add_project_group)
		Ui_ProjectForm.scope_input.setGeometry(QtCore.QRect(40, 455, 481, 71))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(-1)
		Ui_ProjectForm.scope_input.setFont(font)
		Ui_ProjectForm.scope_input.viewport().setProperty("cursor", QtGui.QCursor(QtCore.Qt.IBeamCursor))
		Ui_ProjectForm.scope_input.setStyleSheet("border-radius:5px;\n"
"background-color: palette(base);\n"
"font-size:12px;\n"
"")
		Ui_ProjectForm.scope_input.setPlainText("")
		Ui_ProjectForm.scope_input.setObjectName("scope_input")


		_translate = QtCore.QCoreApplication.translate
		add_project_label.setText(_translate("DashbaordWindow", "Add Project"))
		project_title_label.setText(_translate("DashbaordWindow", "Project Title"))
		client_label_2.setText(_translate("DashbaordWindow", "Client Name"))
		category_label.setText(_translate("DashbaordWindow", "Category"))
		Ui_ProjectForm.category_input.setItemText(0, _translate("DashbaordWindow", "Mechanical Works"))
		Ui_ProjectForm.category_input.setItemText(1, _translate("DashbaordWindow", "Civil Works"))
		Ui_ProjectForm.category_input.setItemText(2, _translate("DashbaordWindow", "Electrical Works"))
		Ui_ProjectForm.category_input.setItemText(3, _translate("DashbaordWindow", "Plumbing Works"))
		Ui_ProjectForm.category_input.setItemText(4, _translate("DashbaordWindow", "Architechtural Works"))
		Ui_ProjectForm.category_input.setItemText(5, _translate("DashbaordWindow", "Fire Protection"))
		site_label_2.setText(_translate("DashbaordWindow", "Site Complete Address"))
		start_date_label.setText(_translate("DashbaordWindow", "Start Date: (MM / DD / YY)"))
		end_date_label_add.setText(_translate("DashbaordWindow", "End Date: (MM / DD / YY)"))
		quantity_label_2.setText(_translate("DashbaordWindow", "Quantity"))
		unitname_label.setText(_translate("DashbaordWindow", "Unit"))
		unit_label.setText(_translate("DashbaordWindow", "Unit Price"))
		contract_label.setText(_translate("DashbaordWindow", "Contract Amount"))
		BtnClear.setText(_translate("DashbaordWindow", "Clear"))
		BtnCancel.setText(_translate("DashbaordWindow", "Cancel"))
		BtnSubmit.setText(_translate("DashbaordWindow", "Submit"))
		scope_label.setText(_translate("DashbaordWindow", "Scope of Work"))

		#adds
		now = QDate.currentDate()
		Ui_ProjectForm.start_date_input.setDate(now)
		now=now.addDays(30)
		Ui_ProjectForm.end_date_2.setDate(now)
		Ui_ProjectForm.unit_input.textEdited.connect(lambda :Ui_ProjectForm.getAmount())
		Ui_ProjectForm.quantity_input.textEdited.connect(lambda: Ui_ProjectForm.getAmount())

		Ui_ProjectForm.start_date_input.setDisplayFormat(_translate("EmployeeForm", "MMM d  yyyy"))
		Ui_ProjectForm.end_date_2.setDisplayFormat(_translate("EmployeeForm", "MMM d  yyyy"))


		#functions

		BtnCancel.clicked.connect(lambda: Ui_ProjectForm.hideForm())
		BtnClear.clicked.connect(lambda: Ui_ProjectForm.clearForm())
		BtnSubmit.clicked.connect(lambda: Ui_ProjectForm.submitForm())

		#input checker

		Ui_ProjectForm.project_title_input.setMaxLength(100)
		Ui_ProjectForm.client_input.setMaxLength(50)
		Ui_ProjectForm.site_input.setMaxLength(150)

		#input to title

		Ui_ProjectForm.project_title_input.textEdited.connect(lambda: Ui_ProjectForm.keyPressEvent(Ui_ProjectForm.project_title_input))
		Ui_ProjectForm.client_input.textEdited.connect(lambda: Ui_ProjectForm.keyPressEvent(Ui_ProjectForm.client_input))
		Ui_ProjectForm.site_input.textEdited.connect(lambda: Ui_ProjectForm.keyPressEvent(Ui_ProjectForm.site_input))
		Ui_ProjectForm.unitname_input.textEdited.connect(lambda: Ui_ProjectForm.keyPressEvent(Ui_ProjectForm.unitname_input))

		my_regex = QtCore.QRegExp("^[0-9]*$")
		my_validator = QtGui.QRegExpValidator(my_regex, Ui_ProjectForm.quantity_input)
		Ui_ProjectForm.quantity_input.setValidator(my_validator)

		my_regex = QtCore.QRegExp("^\\d{1,6}(\\.\\d{1,2})?$")
		my_validator = QtGui.QRegExpValidator(my_regex, Ui_ProjectForm.unit_input)
		Ui_ProjectForm.unit_input.setValidator(my_validator)

		my_validator = QtGui.QRegExpValidator(my_regex, Ui_ProjectForm.contract_input)
		Ui_ProjectForm.contract_input.setValidator(my_validator)
		Ui_ProjectForm.contract_input.setReadOnly(True)

		#Icon 
		icon = QtGui.QIcon()
		icon.addPixmap(QtGui.QPixmap(":/Icons/Assets/FormCancelIcon.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
		BtnCancel.setIcon(icon)
		icon.addPixmap(QtGui.QPixmap(":/Icons/Assets/FormClearIcon.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
		BtnClear.setIcon(icon)
		icon.addPixmap(QtGui.QPixmap(":/Icons/Assets/FormSubmitIcon.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
		BtnSubmit.setIcon(icon)