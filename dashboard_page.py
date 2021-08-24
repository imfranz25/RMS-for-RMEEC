# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'dashboard_page2.ui'
#
# Created by: PyQt5 UI code generator 5.15.2
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets
import sys
import mysql.connector
from PyQt5.QtCore import QDate, Qt
from PyQt5.QtGui import QColor
import datetime
from dialogs import Dialog
from db import con

class Ui_DashbaordPage(object):
    active_employee_count=""
    project_category=""
    project_list=""

    def loadRecent():
        cursor = con.cursor()
        cursor.execute("SELECT * FROM `activity` ORDER BY `Act_id` DESC")
        res = cursor.fetchall()
        cursor.execute(f"SELECT * FROM `projects`")
        res1= cursor.fetchall()

        project_id = []


        for x in res:
            if x[1].isnumeric():

                for y in res1:
                    
                    if int(x[1])==y[0]:
                        project_id.append(x[1])

            project_id = list(dict.fromkeys(project_id))
            if len(project_id)==8:
                break


        Ui_DashbaordPage.project_list.clear()
        #list

        index = 0
        while index < len(project_id):
            try:
                cursor.execute(f"SELECT * FROM `projects` WHERE `project_id`={project_id[index]}")
                res= cursor.fetchall()

                date = QDate(Ui_DashbaordPage.process_date(res[0][5]))
                date=date.addDays(30)
                now = QDate.currentDate()
                if date >= now:
                    project = (f"{res[0][1]}\n[{res[0][2]}]")

                    item = QtWidgets.QListWidgetItem(project)
                    item.setBackground(QColor('#666666')) if (index % 2) == 0 else item.setBackground(QColor('#595959'))
                    item.value = project_id[index]
                    Ui_DashbaordPage.project_list.addItem(item)
                    index = index + 1
                else:
                    index = index + 1

            except:
                Dialog.msg_dialog(str(sys.exc_info()))

    

    def getLastLogin(label):
        try:
            cursor = con.cursor()
            cursor.execute("SELECT * FROM `activity`")
            res = cursor.fetchall()
            time = []
            for x in res:
                if x[1]=="Login Success":
                    time.append(x[2])

            label.setText(time[len(time)-2])

        except:
            Dialog.msg_dialog(str(sys.exc_info()))


    def setClock(label):
        now = datetime.datetime.now()
        label.setText(now.strftime("%H:%M:%S"))

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

    def getTotalEmployee():
        try:
            cursor = con.cursor()
            cursor.execute("SELECT COUNT(*) FROM `employees`")
            res = cursor.fetchall()
            count = str(res)
            Ui_DashbaordPage.active_employee_count.setText(count[2:].replace(',)]', ''))


            cursor.execute("SELECT * FROM `projects`")
            res2=cursor.fetchall()

            active=0
            archive=0

            for x in res2:
                date = QDate(Ui_DashbaordPage.process_date(x[5]))
                date=date.addDays(14)
                now = QDate.currentDate()
                if date >= now:
                    active=active+1
                else:
                    archive=archive+1

            Ui_DashbaordPage.active_project_count.setText(str(active))

            Ui_DashbaordPage.archive_count.setText(str(archive))



        except:
            Dialog.msg_dialog(str(sys.exc_info()))

    def DashboardPage(dashboard_page):
            dashboard_label = QtWidgets.QLabel(dashboard_page)
            dashboard_label.setGeometry(QtCore.QRect(10, 10, 281, 81))
            font = QtGui.QFont()
            font.setFamily("Calibri")
            font.setPointSize(20)
            font.setBold(True)
            font.setWeight(75)
            dashboard_label.setFont(font)
            dashboard_label.setStyleSheet("color: rgb(255, 255, 255);\n"
                                               "background-color: rgb(148, 0, 2,.4);\n"
                                               "border-radius:8px;\n"
                                               "\n"
                                               "")
            dashboard_label.setLineWidth(4)
            dashboard_label.setObjectName("dashboard_label")
            dashboard_label.setAlignment(QtCore.Qt.AlignCenter)
            project_area = QtWidgets.QScrollArea(dashboard_page)
            project_area.setGeometry(QtCore.QRect(10, 180, 281, 261))
            project_area.setStyleSheet("\n"
                                            "border-radius:8px;")
            project_area.setWidgetResizable(True)
            project_area.setObjectName("project_area")
            scrollAreaWidgetContents = QtWidgets.QWidget()
            scrollAreaWidgetContents.setGeometry(QtCore.QRect(0, 0, 281, 261))
            scrollAreaWidgetContents.setObjectName("scrollAreaWidgetContents")
            Ui_DashbaordPage.project_list = QtWidgets.QListWidget(scrollAreaWidgetContents)
            Ui_DashbaordPage.project_list.setGeometry(QtCore.QRect(0, 0, 281, 261))
            Ui_DashbaordPage.project_list.setStyleSheet("background-color: rgb(167, 167, 167,.4);\n"
                                            "padding:10px;\n"
                                            "font-size:16px;\n"
                                            "color:white;\n"
                                            "border-radius:5px;\n"
  
                                            "")
            Ui_DashbaordPage.project_list.setObjectName("Ui_DashbaordPage.project_list")
            Ui_DashbaordPage.project_list.raise_()
            project_area.setWidget(scrollAreaWidgetContents)
            oprenrecent_label = QtWidgets.QLabel(dashboard_page)
            oprenrecent_label.setGeometry(QtCore.QRect(40, 110, 221, 51))
            font = QtGui.QFont()
            font.setFamily("Calibri")
            font.setPointSize(-1)
            oprenrecent_label.setFont(font)
            oprenrecent_label.setStyleSheet("color: rgb(255, 255, 255);\n"
                                                 "background-color: rgb(148, 0, 2,.4);\n"
                                                 "border-radius:8px;\n"
                                                 "font-size:20px;\n"
                                                 "")
            oprenrecent_label.setObjectName("oprenrecent_label")
            oprenrecent_label.setAlignment(QtCore.Qt.AlignCenter)
            Ui_DashbaordPage.project_category = QtWidgets.QPushButton(dashboard_page)
            Ui_DashbaordPage.project_category.setGeometry(QtCore.QRect(40, 460, 221, 41))
            Ui_DashbaordPage.project_category.setStyleSheet("color: rgb(255, 255, 255);\n"
                                                "background-color: rgb(148, 0, 2,.4);\n"
                                                "border-radius:8px;\n"
                                                "padding-left:10px;\n"
                                                "font-size:20px;\n"
                                                "")
            Ui_DashbaordPage.project_category.setObjectName("Ui_DashbaordPage.project_category")
            time_label = QtWidgets.QLabel(dashboard_page)
            time_label.setGeometry(QtCore.QRect(310, 10, 351, 81))
            font = QtGui.QFont()
            font.setFamily("Calibri")
            font.setPointSize(-1)
            time_label.setFont(font)
            time_label.setStyleSheet("color: rgb(255, 255, 255);\n"
                                          "background-color: rgb(148, 0, 2,.4);\n"
                                          "border-radius:8px;\n"
                                          "font-size:32px;")
            time_label.setObjectName("time_label")
            time_label.setAlignment(QtCore.Qt.AlignCenter)
            status_area = QtWidgets.QGroupBox(dashboard_page)
            status_area.setGeometry(QtCore.QRect(310, 110, 351, 131))
            status_area.setStyleSheet("background-color: rgb(148, 0, 2,.4);\n"
                                           "border-radius:8px;\n"
                                           "color:white;\n"
                                           "")
            status_area.setTitle("")
            status_area.setObjectName("status_area")
            lastlogin_label = QtWidgets.QLabel(status_area)
            lastlogin_label.setGeometry(QtCore.QRect(0, 0, 351, 40))
            font = QtGui.QFont()
            font.setFamily("Calibri")
            font.setPointSize(-1)
            font.setBold(True)
            font.setWeight(75)
            lastlogin_label.setFont(font)
            lastlogin_label.setStyleSheet("background-color: transparent;\n"
                                               "padding-left:8px;\n"
                                               "border-radius:8px;\n"
                                               "font-size:14px;\n"
                                               "font-weight:bold;\n"
                                               "")
            lastlogin_label.setObjectName("lastlogin_label")
            login_date_area = QtWidgets.QLabel(status_area)
            login_date_area.setGeometry(QtCore.QRect(0, 30, 351, 91))
            font = QtGui.QFont()
            font.setFamily("Calibri")
            font.setPointSize(-1)
            login_date_area.setFont(font)
            login_date_area.setStyleSheet("color: rgb(255, 255, 255);\n"
                                               "background-color:transparent;\n"
                                               "border-radius:8px;\n"
                                               "padding-left:10px;\n"
                                               "font-size:30px;")
            login_date_area.setObjectName("login_date_area")
            active_project_are = QtWidgets.QGroupBox(dashboard_page)
            active_project_are.setGeometry(QtCore.QRect(310, 260, 231, 241))
            active_project_are.setStyleSheet("color: rgb(255, 255, 255);\n"
                                                  "background-color: rgb(148, 0, 2,.4);\n"
                                                  "border-radius:8px;\n"
                                                  "")
            active_project_are.setTitle("")
            active_project_are.setObjectName("active_project_are")
            Ui_DashbaordPage.active_project_count = QtWidgets.QLabel(active_project_are)
            Ui_DashbaordPage.active_project_count.setGeometry(QtCore.QRect(0, 0, 241, 131))
            font = QtGui.QFont()
            font.setFamily("Calibri")
            font.setPointSize(-1)
            Ui_DashbaordPage.active_project_count.setFont(font)
            Ui_DashbaordPage.active_project_count.setStyleSheet("background-color: transparent;\n"
                                                    "font-size:60px;\n"
                                                    "padding-left:10px;")
            Ui_DashbaordPage.active_project_count.setObjectName("Ui_DashbaordPage.active_project_count")
            active_project_icon = QtWidgets.QLabel(active_project_are)
            active_project_icon.setGeometry(QtCore.QRect(50, 50, 171, 191))
            active_project_icon.setStyleSheet("background-image: url(:/Icons/Assets/dash_icons.png);\n"
                                                   "background-color:transparent;")
            active_project_icon.setText("")
            active_project_icon.setObjectName("active_project_icon")
            active_project_label = QtWidgets.QLabel(active_project_are)
            active_project_label.setGeometry(QtCore.QRect(20, 180, 211, 31))
            active_project_label.setStyleSheet("background-color:transparent;\n"
                                                    "font-size:15px;\n"
                                                    "font-weight:bold;")
            active_project_label.setObjectName("active_project_label")
            active_project_icon.raise_()
            Ui_DashbaordPage.active_project_count.raise_()
            active_project_label.raise_()
            active_employee_area = QtWidgets.QGroupBox(dashboard_page)
            active_employee_area.setGeometry(QtCore.QRect(560, 260, 231, 241))
            active_employee_area.setStyleSheet("color: rgb(255, 255, 255);\n"
                                                    "background-color: rgb(148, 0, 2,.4);\n"
                                                    "border-radius:8px;\n"
                                                    "")
            active_employee_area.setTitle("")
            active_employee_area.setObjectName("active_employee_area")
            Ui_DashbaordPage.active_employee_count = QtWidgets.QLabel(active_employee_area)
            Ui_DashbaordPage.active_employee_count.setGeometry(QtCore.QRect(0, 0, 231, 131))
            font = QtGui.QFont()
            font.setFamily("Calibri")
            font.setPointSize(-1)
            Ui_DashbaordPage.active_employee_count.setFont(font)
            Ui_DashbaordPage.active_employee_count.setStyleSheet("background-color: transparent;\n"
                                                     "font-size:60px;\n"
                                                     "padding-left:10px;")
            Ui_DashbaordPage.active_employee_count.setObjectName("active_employee_count")
            active_employee_icon = QtWidgets.QLabel(active_employee_area)
            active_employee_icon.setGeometry(QtCore.QRect(50, 50, 171, 191))
            active_employee_icon.setStyleSheet("background-image: url(:/Icons/Assets/employee_icons.png);\n"
                                                    "background-color:transparent;")
            active_employee_icon.setText("")
            active_employee_icon.setObjectName("active_employee_icon")
            active_employee_label = QtWidgets.QLabel(active_employee_area)
            active_employee_label.setGeometry(QtCore.QRect(20, 180, 211, 31))
            active_employee_label.setStyleSheet("background-color:transparent;\n"
                                                     "font-size:15px;\n"
                                                     "font-weight:bold;")
            active_employee_label.setObjectName("active_employee_label")
            active_employee_icon.raise_()
            Ui_DashbaordPage.active_employee_count.raise_()
            active_employee_label.raise_()
            archive_area = QtWidgets.QGroupBox(dashboard_page)
            archive_area.setGeometry(QtCore.QRect(810, 260, 231, 241))
            archive_area.setStyleSheet("color: rgb(255, 255, 255);\n"
                                            "background-color: rgb(148, 0, 2,.4);\n"
                                            "border-radius:8px;\n"
                                            "")
            archive_area.setTitle("")
            archive_area.setObjectName("archive_area")
            Ui_DashbaordPage.archive_count = QtWidgets.QLabel(archive_area)
            Ui_DashbaordPage.archive_count.setGeometry(QtCore.QRect(0, 0, 231, 131))
            font = QtGui.QFont()
            font.setFamily("Calibri")
            font.setPointSize(-1)
            Ui_DashbaordPage.archive_count.setFont(font)
            Ui_DashbaordPage.archive_count.setStyleSheet("background-color: transparent;\n"
                                             "font-size:60px;\n"
                                             "padding-left:10px;")
            Ui_DashbaordPage.archive_count.setObjectName("Ui_DashbaordPage.archive_count")
            archive_icon = QtWidgets.QLabel(archive_area)
            archive_icon.setGeometry(QtCore.QRect(50, 50, 171, 191))
            archive_icon.setStyleSheet("background-image: url(:/Icons/Assets/archive_icons.png);\n"
                                            "background-color:transparent;")
            archive_icon.setText("")
            archive_icon.setObjectName("archive_icon")
            active_archive_label = QtWidgets.QLabel(archive_area)
            active_archive_label.setGeometry(QtCore.QRect(30, 180, 211, 31))
            active_archive_label.setStyleSheet("background-color:transparent;\n"
                                                    "font-size:15px;\n"
                                                    "font-weight:bold;")
            active_archive_label.setObjectName("active_archive_label")
            archive_icon.raise_()
            Ui_DashbaordPage.archive_count.raise_()
            active_archive_label.raise_()
            calendar_area = QtWidgets.QGroupBox(dashboard_page)
            calendar_area.setGeometry(QtCore.QRect(700, 10, 341, 231))
            calendar_area.setStyleSheet("color: rgb(255, 255, 255);\n"
                                             "background-color: rgb(148, 0, 2,.4);\n"
                                             "border-radius:8px;\n"
                                             "")
            calendar_area.setTitle("")
            calendar_area.setObjectName("calendar_area")
            calendar = QtWidgets.QCalendarWidget(calendar_area)
            calendar.setGeometry(QtCore.QRect(0, 0, 341, 231))
            font = QtGui.QFont()
            font.setFamily("Calibri")
            calendar.setFont(font)
            calendar.setStyleSheet("background-color:transparent;\n"
                                        "alternate-background-color: transparent;\n"
                                        "selection-background-color: rgb(148, 0, 2,.4);\n"
                                        "selection-color: cyan;\n"
                                        "color:white;\n"
                                        "padding:10px;\n"
                                        "border-radius:100px;\n"
                                        "")
            calendar.setObjectName("calendar")


            _translate = QtCore.QCoreApplication.translate
            dashboard_label.setText(_translate("DashbaordWindow", "Dashboard"))
            __sortingEnabled = Ui_DashbaordPage.project_list.isSortingEnabled()
            Ui_DashbaordPage.project_list.setSortingEnabled(False)


            Ui_DashbaordPage.project_list.setSortingEnabled(__sortingEnabled)
            oprenrecent_label.setText(_translate("DashbaordWindow", "Open Recent"))
            Ui_DashbaordPage.project_category.setText(_translate("DashbaordWindow", "Project Category  >"))
            time_label.setText(_translate("DashbaordWindow", ""))
            lastlogin_label.setText(_translate("DashbaordWindow", "Last Login"))
            login_date_area.setText(_translate("DashbaordWindow", ""))
            Ui_DashbaordPage.active_project_count.setText(_translate("DashbaordWindow", "0"))
            active_project_label.setText(_translate("DashbaordWindow", "Active Project(s)"))
            Ui_DashbaordPage.active_employee_count.setText(_translate("DashbaordWindow", "0"))
            active_employee_label.setText(_translate("DashbaordWindow", "Employee(s)"))
            Ui_DashbaordPage.archive_count.setText(_translate("DashbaordWindow", "0"))
            active_archive_label.setText(_translate("DashbaordWindow", "Archive(s)"))

            #load recent
            Ui_DashbaordPage.loadRecent()


            #functions
            Ui_DashbaordPage.getTotalEmployee()
            Ui_DashbaordPage.getLastLogin(login_date_area)

            #clock
            now = datetime.datetime.now()
            time_label.setText(now.strftime("%H:%M:%S"))

            timer = QtCore.QTimer(dashboard_page)
            timer.timeout.connect(lambda: Ui_DashbaordPage.setClock(time_label))
            timer.start(1000)






    import Images_rc

