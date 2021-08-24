from PyQt5 import QtCore, QtGui, QtWidgets
from db import con
from PyQt5.QtCore import QDate, Qt

class Ui_ProjectCategory(object):

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

	def updateCount():
		t1,t2,t3,t4,t5,t6=0,0,0,0,0,0

		cursor = con.cursor()
		cursor.execute("SELECT * FROM `projects`")
		res=cursor.fetchall()

		for x in res:
			date = QDate(Ui_ProjectCategory.process_date(x[5]))
			date=date.addDays(30)
			now = QDate.currentDate()

			if date >= now:
				cat = x[6]
				if cat=="Mechanical Works":
					t1=t1+1
				elif cat=="Civil Works":
					t2=t2+1
				elif cat=="Electrical Works":
					t3=t3+1
				elif cat=="Plumbing Works":
					t4=t4+1
				elif cat=="Architectural Works":
					t5=t5+1
				else:
					t6=t6+1

		Ui_ProjectCategory.LBAM.setText(f"Active Projects: {t1}")
		Ui_ProjectCategory.LBAC.setText(f"Active Projects: {t2}")
		Ui_ProjectCategory.LBAE.setText(f"Active Projects: {t3}")
		Ui_ProjectCategory.LBAF.setText(f"Active Projects: {t6}")
		Ui_ProjectCategory.LBAP.setText(f"Active Projects: {t4}")
		Ui_ProjectCategory.LBAA.setText(f"Active Projects: {t5}")



	def ProjectCategory(project_category):
		LBProjCat = QtWidgets.QLabel(project_category)
		LBProjCat.setGeometry(QtCore.QRect(30, 20, 621, 51))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(24)
		font.setBold(True)
		font.setWeight(75)
		LBProjCat.setFont(font)
		LBProjCat.setStyleSheet("color:white;\n"
	"background:QLinearGradient( x1: 0, y1: 0, x2: 1,y2:0, stop: 0 rgb(255,0,0,.4),stop:1 transparent);\n"
	"padding-left:15px;")
		LBProjCat.setObjectName("LBProjCat")
		Mechanical = QtWidgets.QGroupBox(project_category)
		Mechanical.setGeometry(QtCore.QRect(30, 90, 330, 210))
		Mechanical.setStyleSheet("border-radius:10px;\n"
	"color:white;")
		Mechanical.setTitle("")
		Mechanical.setObjectName("Mechanical")
		BGMechanical = QtWidgets.QLabel(Mechanical)
		BGMechanical.setGeometry(QtCore.QRect(0, 0, 330, 210))
		BGMechanical.setStyleSheet("border:2px solid gray;\n"
	"background-image: url(:/Backgrounds/Assets/mech_bg.png);\n"
	"")
		BGMechanical.setText("")
		BGMechanical.setObjectName("BGMechanical")
		Ui_ProjectCategory.BtnMechanical = QtWidgets.QPushButton(Mechanical)
		Ui_ProjectCategory.BtnMechanical.setGeometry(QtCore.QRect(0, 0, 330, 210))
		Ui_ProjectCategory.BtnMechanical.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		Ui_ProjectCategory.BtnMechanical.setStyleSheet("background-color:rgb(180,0,0,.3);\n"
	"border:2px solid gray;")
		Ui_ProjectCategory.BtnMechanical.setText("")
		Ui_ProjectCategory.BtnMechanical.setObjectName("Ui_ProjectCategory.BtnMechanical")
		Ui_ProjectCategory.LBAM = QtWidgets.QLabel(Mechanical)
		Ui_ProjectCategory.LBAM.setGeometry(QtCore.QRect(20, 150, 151, 21))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(14)
		font.setBold(True)
		font.setWeight(75)
		Ui_ProjectCategory.LBAM.setFont(font)
		Ui_ProjectCategory.LBAM.setObjectName("Ui_ProjectCategory.LBAM")
		LBMechanical = QtWidgets.QPlainTextEdit(Mechanical)
		LBMechanical.setGeometry(QtCore.QRect(20, 20, 261, 101))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(26)
		font.setBold(False)
		font.setWeight(50)
		LBMechanical.setFont(font)
		LBMechanical.setObjectName("LBMechanical")
		Civil = QtWidgets.QGroupBox(project_category)
		Civil.setGeometry(QtCore.QRect(370, 90, 330, 210))
		Civil.setStyleSheet("border-radius:10px;\n"
	"color:white;")
		Civil.setTitle("")
		Civil.setObjectName("Civil")
		BGCivil = QtWidgets.QLabel(Civil)
		BGCivil.setGeometry(QtCore.QRect(0, 0, 330, 210))
		BGCivil.setStyleSheet("background-image:url(:/Backgrounds/Assets/civil_bg.png);\n"
	"border:2px solid gray;")
		BGCivil.setText("")
		BGCivil.setObjectName("BGCivil")
		Ui_ProjectCategory.BtnCivil = QtWidgets.QPushButton(Civil)
		Ui_ProjectCategory.BtnCivil.setGeometry(QtCore.QRect(0, 0, 330, 210))
		Ui_ProjectCategory.BtnCivil.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		Ui_ProjectCategory.BtnCivil.setStyleSheet("background-color:rgb(255,0,0,.3);\n"
	"border:2px solid gray;")
		Ui_ProjectCategory.BtnCivil.setText("")
		Ui_ProjectCategory.BtnCivil.setObjectName("Ui_ProjectCategory.BtnCivil")
		LBCivil = QtWidgets.QPlainTextEdit(Civil)
		LBCivil.setGeometry(QtCore.QRect(20, 20, 261, 101))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(26)
		font.setBold(False)
		font.setWeight(50)
		LBCivil.setFont(font)
		LBCivil.setObjectName("LBCivil")
		Ui_ProjectCategory.LBAC = QtWidgets.QLabel(Civil)
		Ui_ProjectCategory.LBAC.setGeometry(QtCore.QRect(20, 150, 151, 21))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(14)
		font.setBold(True)
		font.setWeight(75)
		Ui_ProjectCategory.LBAC.setFont(font)
		Ui_ProjectCategory.LBAC.setObjectName("Ui_ProjectCategory.LBAC")
		Electrical = QtWidgets.QGroupBox(project_category)
		Electrical.setGeometry(QtCore.QRect(710, 90, 330, 210))
		Electrical.setStyleSheet("border-radius:10px;\n"
	"color:white;")
		Electrical.setTitle("")
		Electrical.setObjectName("Electrical")
		BGElectrical = QtWidgets.QLabel(Electrical)
		BGElectrical.setGeometry(QtCore.QRect(0, 0, 330, 210))
		BGElectrical.setStyleSheet("border:2px solid gray;\n"
	"background-image: url(:/Backgrounds/Assets/elec_bg.png);")
		BGElectrical.setText("")
		BGElectrical.setObjectName("BGElectrical")
		Ui_ProjectCategory.BtnElectrical = QtWidgets.QPushButton(Electrical)
		Ui_ProjectCategory.BtnElectrical.setGeometry(QtCore.QRect(0, 0, 330, 210))
		Ui_ProjectCategory.BtnElectrical.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		Ui_ProjectCategory.BtnElectrical.setStyleSheet("background-color:rgb(255,0,0,.4);\n"
	"border:2px solid gray;")
		Ui_ProjectCategory.BtnElectrical.setText("")
		Ui_ProjectCategory.BtnElectrical.setObjectName("Ui_ProjectCategory.BtnElectrical")
		LBElectrical = QtWidgets.QPlainTextEdit(Electrical)
		LBElectrical.setGeometry(QtCore.QRect(20, 20, 261, 101))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(26)
		font.setBold(False)
		font.setWeight(50)
		LBElectrical.setFont(font)
		LBElectrical.setObjectName("LBElectrical")
		Ui_ProjectCategory.LBAE = QtWidgets.QLabel(Electrical)
		Ui_ProjectCategory.LBAE.setGeometry(QtCore.QRect(20, 150, 151, 21))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(14)
		font.setBold(True)
		font.setWeight(75)
		Ui_ProjectCategory.LBAE.setFont(font)
		Ui_ProjectCategory.LBAE.setObjectName("Ui_ProjectCategory.LBAE")
		Fire = QtWidgets.QGroupBox(project_category)
		Fire.setGeometry(QtCore.QRect(710, 310, 330, 210))
		Fire.setStyleSheet("border-radius:10px;\n"
	"color:white;")
		Fire.setTitle("")
		Fire.setObjectName("Fire")
		BGFire = QtWidgets.QLabel(Fire)
		BGFire.setGeometry(QtCore.QRect(0, 0, 330, 210))
		BGFire.setStyleSheet("border:2px solid gray;\n"
	"background-image: url(:/Backgrounds/Assets/fire_bg.png);")
		BGFire.setText("")
		BGFire.setObjectName("BGFire")
		Ui_ProjectCategory.BtnFire = QtWidgets.QPushButton(Fire)
		Ui_ProjectCategory.BtnFire.setGeometry(QtCore.QRect(0, 0, 330, 210))
		Ui_ProjectCategory.BtnFire.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		Ui_ProjectCategory.BtnFire.setStyleSheet("background-color:rgb(255,0,0,.5);\n"
	"border:2px solid gray;")
		Ui_ProjectCategory.BtnFire.setText("")
		Ui_ProjectCategory.BtnFire.setObjectName("Ui_ProjectCategory.BtnFire")
		LBFire = QtWidgets.QPlainTextEdit(Fire)
		LBFire.setGeometry(QtCore.QRect(20, 20, 261, 101))
		palette = QtGui.QPalette()
		brush = QtGui.QBrush(QtGui.QColor(255, 255, 255))
		brush.setStyle(QtCore.Qt.SolidPattern)
		palette.setBrush(QtGui.QPalette.Active, QtGui.QPalette.WindowText, brush)
		brush = QtGui.QBrush(QtGui.QColor(0, 0, 0, 0))
		brush.setStyle(QtCore.Qt.SolidPattern)
		palette.setBrush(QtGui.QPalette.Active, QtGui.QPalette.Button, brush)
		brush = QtGui.QBrush(QtGui.QColor(255, 255, 255))
		brush.setStyle(QtCore.Qt.SolidPattern)
		palette.setBrush(QtGui.QPalette.Active, QtGui.QPalette.Text, brush)
		brush = QtGui.QBrush(QtGui.QColor(255, 255, 255))
		brush.setStyle(QtCore.Qt.SolidPattern)
		palette.setBrush(QtGui.QPalette.Active, QtGui.QPalette.ButtonText, brush)
		brush = QtGui.QBrush(QtGui.QColor(0, 0, 0))
		brush.setStyle(QtCore.Qt.NoBrush)
		palette.setBrush(QtGui.QPalette.Active, QtGui.QPalette.Base, brush)
		brush = QtGui.QBrush(QtGui.QColor(0, 0, 0, 0))
		brush.setStyle(QtCore.Qt.SolidPattern)
		palette.setBrush(QtGui.QPalette.Active, QtGui.QPalette.Window, brush)
		brush = QtGui.QBrush(QtGui.QColor(255, 255, 255, 128))
		brush.setStyle(QtCore.Qt.NoBrush)
		palette.setBrush(QtGui.QPalette.Active, QtGui.QPalette.PlaceholderText, brush)
		brush = QtGui.QBrush(QtGui.QColor(255, 255, 255))
		brush.setStyle(QtCore.Qt.SolidPattern)
		palette.setBrush(QtGui.QPalette.Inactive, QtGui.QPalette.WindowText, brush)
		brush = QtGui.QBrush(QtGui.QColor(0, 0, 0, 0))
		brush.setStyle(QtCore.Qt.SolidPattern)
		palette.setBrush(QtGui.QPalette.Inactive, QtGui.QPalette.Button, brush)
		brush = QtGui.QBrush(QtGui.QColor(255, 255, 255))
		brush.setStyle(QtCore.Qt.SolidPattern)
		palette.setBrush(QtGui.QPalette.Inactive, QtGui.QPalette.Text, brush)
		brush = QtGui.QBrush(QtGui.QColor(255, 255, 255))
		brush.setStyle(QtCore.Qt.SolidPattern)
		palette.setBrush(QtGui.QPalette.Inactive, QtGui.QPalette.ButtonText, brush)
		brush = QtGui.QBrush(QtGui.QColor(0, 0, 0))
		brush.setStyle(QtCore.Qt.NoBrush)
		palette.setBrush(QtGui.QPalette.Inactive, QtGui.QPalette.Base, brush)
		brush = QtGui.QBrush(QtGui.QColor(0, 0, 0, 0))
		brush.setStyle(QtCore.Qt.SolidPattern)
		palette.setBrush(QtGui.QPalette.Inactive, QtGui.QPalette.Window, brush)
		brush = QtGui.QBrush(QtGui.QColor(255, 255, 255, 128))
		brush.setStyle(QtCore.Qt.NoBrush)
		palette.setBrush(QtGui.QPalette.Inactive, QtGui.QPalette.PlaceholderText, brush)
		brush = QtGui.QBrush(QtGui.QColor(255, 255, 255))
		brush.setStyle(QtCore.Qt.SolidPattern)
		palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.WindowText, brush)
		brush = QtGui.QBrush(QtGui.QColor(0, 0, 0, 0))
		brush.setStyle(QtCore.Qt.SolidPattern)
		palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.Button, brush)
		brush = QtGui.QBrush(QtGui.QColor(255, 255, 255))
		brush.setStyle(QtCore.Qt.SolidPattern)
		palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.Text, brush)
		brush = QtGui.QBrush(QtGui.QColor(255, 255, 255))
		brush.setStyle(QtCore.Qt.SolidPattern)
		palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.ButtonText, brush)
		brush = QtGui.QBrush(QtGui.QColor(0, 0, 0))
		brush.setStyle(QtCore.Qt.NoBrush)
		palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.Base, brush)
		brush = QtGui.QBrush(QtGui.QColor(0, 0, 0, 0))
		brush.setStyle(QtCore.Qt.SolidPattern)
		palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.Window, brush)
		brush = QtGui.QBrush(QtGui.QColor(255, 255, 255, 128))
		brush.setStyle(QtCore.Qt.NoBrush)
		palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.PlaceholderText, brush)
		LBFire.setPalette(palette)
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(26)
		font.setBold(False)
		font.setItalic(False)
		font.setUnderline(False)
		font.setWeight(50)
		font.setStrikeOut(False)
		font.setStyleStrategy(QtGui.QFont.NoAntialias)
		LBFire.setFont(font)
		LBFire.setStyleSheet("text-shadow:1px 1px 2px black;")
		LBFire.setBackgroundVisible(False)
		LBFire.setObjectName("LBFire")
		Ui_ProjectCategory.LBAF = QtWidgets.QLabel(Fire)
		Ui_ProjectCategory.LBAF.setGeometry(QtCore.QRect(20, 150, 151, 21))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(14)
		font.setBold(True)
		font.setWeight(75)
		Ui_ProjectCategory.LBAF.setFont(font)
		Ui_ProjectCategory.LBAF.setObjectName("Ui_ProjectCategory.LBAF")
		Plumbing = QtWidgets.QGroupBox(project_category)
		Plumbing.setGeometry(QtCore.QRect(30, 310, 330, 210))
		Plumbing.setStyleSheet("border-radius:10px;\n"
	"color:white;")
		Plumbing.setTitle("")
		Plumbing.setObjectName("Plumbing")
		BGPlumbing = QtWidgets.QLabel(Plumbing)
		BGPlumbing.setGeometry(QtCore.QRect(0, 0, 330, 210))
		BGPlumbing.setStyleSheet("background-image: url(:/Backgrounds/Assets/plumb_bg.png);\n"
	"border:2px solid gray;")
		BGPlumbing.setText("")
		BGPlumbing.setObjectName("BGPlumbing")
		Ui_ProjectCategory.BtnPlumbing = QtWidgets.QPushButton(Plumbing)
		Ui_ProjectCategory.BtnPlumbing.setGeometry(QtCore.QRect(0, 0, 330, 210))
		Ui_ProjectCategory.BtnPlumbing.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		Ui_ProjectCategory.BtnPlumbing.setStyleSheet("background-color:rgb(255,0,0,.4);\n"
	"border:2px solid gray;")
		Ui_ProjectCategory.BtnPlumbing.setText("")
		Ui_ProjectCategory.BtnPlumbing.setObjectName("Ui_ProjectCategory.BtnPlumbing")
		LBPlumbing = QtWidgets.QPlainTextEdit(Plumbing)
		LBPlumbing.setGeometry(QtCore.QRect(20, 20, 261, 101))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(26)
		font.setBold(False)
		font.setWeight(50)
		LBPlumbing.setFont(font)
		LBPlumbing.setObjectName("LBPlumbing")
		Ui_ProjectCategory.LBAP = QtWidgets.QLabel(Plumbing)
		Ui_ProjectCategory.LBAP.setGeometry(QtCore.QRect(20, 150, 151, 21))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(14)
		font.setBold(True)
		font.setWeight(75)
		Ui_ProjectCategory.LBAP.setFont(font)
		Ui_ProjectCategory.LBAP.setObjectName("Ui_ProjectCategory.LBAP")
		Architectural = QtWidgets.QGroupBox(project_category)
		Architectural.setGeometry(QtCore.QRect(370, 310, 330, 210))
		Architectural.setStyleSheet("border-radius:10px;\n"
	"color:white;")
		Architectural.setTitle("")
		Architectural.setObjectName("Architectural")
		BGArchitectural = QtWidgets.QLabel(Architectural)
		BGArchitectural.setGeometry(QtCore.QRect(0, 0, 330, 210))
		BGArchitectural.setStyleSheet("border:2px solid gray;\n"
	"background-image: url(:/Backgrounds/Assets/architectural_bg.png);")
		BGArchitectural.setText("")
		BGArchitectural.setObjectName("BGArchitectural")
		Ui_ProjectCategory.BtnArchitectural = QtWidgets.QPushButton(Architectural)
		Ui_ProjectCategory.BtnArchitectural.setGeometry(QtCore.QRect(0, 0, 330, 210))
		Ui_ProjectCategory.BtnArchitectural.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		Ui_ProjectCategory.BtnArchitectural.setStyleSheet("background-color:rgb(255,0,0,.4);\n"
	"border:2px solid gray;")
		Ui_ProjectCategory.BtnArchitectural.setText("")
		Ui_ProjectCategory.BtnArchitectural.setObjectName("Ui_ProjectCategory.BtnArchitectural")
		LBArchitectural = QtWidgets.QPlainTextEdit(Architectural)
		LBArchitectural.setGeometry(QtCore.QRect(20, 20, 261, 101))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(26)
		font.setBold(False)
		font.setWeight(50)
		LBArchitectural.setFont(font)
		LBArchitectural.setObjectName("LBArchitectural")
		Ui_ProjectCategory.LBAA = QtWidgets.QLabel(Architectural)
		Ui_ProjectCategory.LBAA.setGeometry(QtCore.QRect(20, 150, 151, 21))
		font = QtGui.QFont()
		font.setFamily("Calibri")
		font.setPointSize(14)
		font.setBold(True)
		font.setWeight(75)
		Ui_ProjectCategory.LBAA.setFont(font)
		Ui_ProjectCategory.LBAA.setObjectName("Ui_ProjectCategory.LBAA")

		_translate = QtCore.QCoreApplication.translate

		LBProjCat.setText(_translate("DashbaordWindow", "Project Category"))
		Ui_ProjectCategory.LBAM.setText(_translate("DashbaordWindow", "Active Projects: 0"))
		LBMechanical.setPlainText(_translate("DashbaordWindow", "Mechanical \n"
	"Works"))
		LBCivil.setPlainText(_translate("DashbaordWindow", "Civil\n"
	"Works"))
		Ui_ProjectCategory.LBAC.setText(_translate("DashbaordWindow", "Active Projects: 0"))
		LBElectrical.setPlainText(_translate("DashbaordWindow", "Electrical\n"
	"Works"))
		Ui_ProjectCategory.LBAE.setText(_translate("DashbaordWindow", "Active Projects: 0"))
		LBFire.setPlainText(_translate("DashbaordWindow", "Fire\n"
	"Protection"))
		Ui_ProjectCategory.LBAF.setText(_translate("DashbaordWindow", "Active Projects: 0"))
		LBPlumbing.setPlainText(_translate("DashbaordWindow", "Plumbing\n"
	"Works"))
		Ui_ProjectCategory.LBAP.setText(_translate("DashbaordWindow", "Active Projects: 0"))
		LBArchitectural.setPlainText(_translate("DashbaordWindow", "Architectural\n"
	"Works"))
		Ui_ProjectCategory.LBAA.setText(_translate("DashbaordWindow", "Active Projects: 0"))

		Ui_ProjectCategory.updateCount()

		LBMechanical.setEnabled(False)
		LBCivil.setEnabled(False)
		LBFire.setEnabled(False)
		LBPlumbing.setEnabled(False)
		LBArchitectural.setEnabled(False)
		LBElectrical.setEnabled(False)
