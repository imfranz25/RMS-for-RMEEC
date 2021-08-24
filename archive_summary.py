
import sys
from PyQt5 import QtCore, QtGui, QtWidgets
from db import con
from dialogs import Dialog
from PyQt5.QtCore import QDate, Qt

class Ui_Summary(object):

    #--------------------Summary Count (Default 0)------------------------#

    LBCountE = "" # (Total Project Employees)
    LBCountW = "" # (Total Remaining Weeks)
    LBCountL = "" # (Total Labor Amount)
    LBCountT = "" # (Total Transaction Amount)

    project_id=0

    def process_date(date):
        index = 0
        start = 0
        flag1 = True
        flag2 = False
        flag3 = False

        while index < len(date):
            if flag1 and (date[index] == ","):
                year = date[start:index]
                start = index + 1
                flag1 = False
                flag2 = True
            elif flag2 and (date[index] == ","):
                month = date[start:index]
                start = index + 1
                flag2 = False
                flag3 = True
            if flag3:
                day = date[start:len(date)]
                break
            index = index + 1

        return QDate(int(year),int(month),int(day))

    def get_summary():
        cursor = con.cursor()
        if Ui_Summary.project_id>0:
            try:

                 # (Total Project Employees)
                cursor.execute(f"SELECT * FROM `projecte` WHERE `project_id` = {Ui_Summary.project_id}")
                res = cursor.fetchall()

                Ui_Summary.LBCountE.setText(str(len(res)))

                # (Total Remaining Weeks)

                cursor.execute(f"SELECT * FROM `projects` WHERE `project_id` = {Ui_Summary.project_id}")
                res = cursor.fetchall()
                now = QDate.currentDate()
                startdate=res[0][4]
                startdate=QDate(Ui_Summary.process_date(startdate))
                enddate=res[0][5]
                enddate=QDate(Ui_Summary.process_date(enddate))
                weekcount=0
                x = 0
                while startdate<=enddate: 
                    startdate=startdate.addDays(1)
                    x=x+1
                    if x==7:
                        x=0
                        weekcount=weekcount+1

                Ui_Summary.LBCountW.setText(str(weekcount))

                # (Total Labor Amount)

                cursor.execute(f"SELECT * FROM `project_payroll` WHERE `project_id` = {Ui_Summary.project_id}")
                res = cursor.fetchall()

                totalLabor=0
                for i in res:
                    totalLabor=totalLabor+float(i[14])

                format_float = "{:.2f}".format(totalLabor)

                Ui_Summary.LBCountL.setText(str(format_float))
                

                # (Total Transaction Amount)

                cursor.execute(f"SELECT * FROM `transaction` WHERE `project_id` = {Ui_Summary.project_id}")
                res = cursor.fetchall()

                totalTrans=0
                for i in res:
                    totalTrans=totalTrans+float(i[10])

                format_float = "{:.2f}".format(totalTrans)

                Ui_Summary.LBCountT.setText(str(format_float))

                



                
            except:
                Dialog.msg_dialog(str(sys.exc_info()))



            
            
            


    def Summary(SummaryWidget):

        #-----------------------------Summary Page--------------------------#

        # Font Property Summary Title
        font = QtGui.QFont()
        font.setFamily("Calibri")
        font.setPointSize(16)
        font.setBold(True)
        font.setWeight(75)

        LBSummary = QtWidgets.QLabel(SummaryWidget)
        LBSummary.setGeometry(QtCore.QRect(10, 10, 271, 31))
        LBSummary.setFont(font)
        LBSummary.setStyleSheet("color: rgb(255, 255, 255);")
        LBSummary.setAlignment(QtCore.Qt.AlignCenter)
        LBSummary.setObjectName("LBSummary")

        Summary = QtWidgets.QGroupBox(SummaryWidget)
        Summary.setGeometry(QtCore.QRect(10, 60, 1041, 365))
        Summary.setStyleSheet("border:none;")
        Summary.setObjectName("Summary")

        #-----------------------------Summary Group--------------------------#

        # Employee Summary Group
        GroupE = QtWidgets.QGroupBox(Summary)
        GroupE.setGeometry(QtCore.QRect(0, 0, 271, 160))
        GroupE.setStyleSheet("color:white;")
        GroupE.setObjectName("GroupE")

        # Week Summary Group
        GroupW = QtWidgets.QGroupBox(Summary)
        GroupW.setGeometry(QtCore.QRect(0, 190, 271, 160))
        GroupW.setStyleSheet("color:white;")
        GroupW.setObjectName("GroupW")

        # Transaction Summary Group
        GroupT = QtWidgets.QGroupBox(Summary)
        GroupT.setGeometry(QtCore.QRect(300, 190, 731, 160))
        GroupT.setStyleSheet("color:white;")
        GroupT.setObjectName("GroupT")

        # Labor Summary Group
        GroupL = QtWidgets.QGroupBox(Summary)
        GroupL.setGeometry(QtCore.QRect(300, 0, 731, 160))
        GroupL.setStyleSheet("color:white;")
        GroupL.setObjectName("GroupL")

        #-----------------------------Backgrounds--------------------------#

        # BG Employee
        BGSumE = QtWidgets.QLabel(GroupE)
        BGSumE.setGeometry(QtCore.QRect(0, 0, 271, 160))
        BGSumE.setStyleSheet("background-color: rgb(148, 0, 2,.4);border-radius:8px;")
        BGSumE.setObjectName("BGSumE")

        # BG Week
        BGSumW = QtWidgets.QLabel(GroupW)
        BGSumW.setGeometry(QtCore.QRect(0, 0, 271, 160))
        BGSumW.setStyleSheet("background-color: rgb(148, 0, 2,.4);border-radius:8px;")
        BGSumW.setObjectName("BGSumW")

        # BG Transaction
        BGSumT = QtWidgets.QLabel(GroupT)
        BGSumT.setGeometry(QtCore.QRect(0, 0, 731, 160))
        BGSumT.setStyleSheet("background-color: rgb(148, 0, 2,.4);border-radius:8px;")
        BGSumT.setObjectName("BGSumT")

        # BG Labor
        BGSumL = QtWidgets.QLabel(GroupL)
        BGSumL.setGeometry(QtCore.QRect(0, 0, 731, 160))
        BGSumL.setStyleSheet("background-color: rgb(148, 0, 2,.4);border-radius:8px;")
        BGSumL.setAlignment(QtCore.Qt.AlignCenter)
        BGSumL.setObjectName("BGSumL")
    
        #-----------------------------Label Titles--------------------------#

        # Font Property for Title
        font.setPointSize(16)
        font.setBold(True)
        font.setWeight(75)

        # Label Summary Employee Title
        LBSumE = QtWidgets.QLabel(GroupE)
        LBSumE.setGeometry(QtCore.QRect(0, 10, 271, 31))
        LBSumE.setFont(font)
        LBSumE.setStyleSheet("color: rgb(255, 255, 255);")
        LBSumE.setAlignment(QtCore.Qt.AlignCenter)
        LBSumE.setObjectName("LBSumE")

        # Label Summary Week Title
        LBSumW = QtWidgets.QLabel(GroupW)
        LBSumW.setGeometry(QtCore.QRect(0, 10, 271, 31))
        LBSumW.setFont(font)
        LBSumW.setStyleSheet("color: rgb(255, 255, 255);")
        LBSumW.setAlignment(QtCore.Qt.AlignCenter)
        LBSumW.setObjectName("LBSumW")

        # Label Summary Transaction Title
        LBSumT = QtWidgets.QLabel(GroupT)
        LBSumT.setGeometry(QtCore.QRect(20, 10, 221, 31))
        LBSumT.setFont(font)
        LBSumT.setStyleSheet("color: rgb(255, 255, 255);")
        LBSumT.setAlignment(QtCore.Qt.AlignCenter)
        LBSumT.setObjectName("LBSumT")

        # Label Summary Labor Title
        LBSumL = QtWidgets.QLabel(GroupL)
        LBSumL.setGeometry(QtCore.QRect(0, 10, 221, 31))
        LBSumL.setFont(font)
        LBSumL.setStyleSheet("color: rgb(255, 255, 255);")
        LBSumL.setAlignment(QtCore.Qt.AlignCenter)
        LBSumL.setObjectName("LBSumL")


        #-------------------------Label Summary Counts--------------------------#

        # Total Count Labels Font Property
        font.setPointSize(54)
        font.setBold(True)
        font.setWeight(75)

        # Total Employees 
        Ui_Summary.LBCountE = QtWidgets.QLabel(GroupE)
        Ui_Summary.LBCountE.setGeometry(QtCore.QRect(0, 50, 271, 91))
        Ui_Summary.LBCountE.setFont(font)
        Ui_Summary.LBCountE.setStyleSheet("color: rgb(255, 255, 255);")
        Ui_Summary.LBCountE.setAlignment(QtCore.Qt.AlignCenter)
        Ui_Summary.LBCountE.setObjectName("LBCountE")

        # Total Remaining Weeks
        Ui_Summary.LBCountW = QtWidgets.QLabel(GroupW)
        Ui_Summary.LBCountW.setGeometry(QtCore.QRect(0, 50, 271, 91))
        Ui_Summary.LBCountW.setFont(font)
        Ui_Summary.LBCountW.setStyleSheet("color: rgb(255, 255, 255);")
        Ui_Summary.LBCountW.setAlignment(QtCore.Qt.AlignCenter)
        Ui_Summary.LBCountW.setObjectName("LBCountW")

        # Total Transaction Amount
        Ui_Summary.LBCountT = QtWidgets.QLabel(GroupT)
        Ui_Summary.LBCountT.setGeometry(QtCore.QRect(0, 50, 731, 91))
        Ui_Summary.LBCountT.setFont(font)
        Ui_Summary.LBCountT.setStyleSheet("color: rgb(255, 255, 255);")
        Ui_Summary.LBCountT.setAlignment(QtCore.Qt.AlignCenter)
        Ui_Summary.LBCountT.setObjectName("LBCountT")

        # Total Labor Amount
        Ui_Summary.LBCountL = QtWidgets.QLabel(GroupL)
        Ui_Summary.LBCountL.setGeometry(QtCore.QRect(0, 50, 731, 91))
        Ui_Summary.LBCountL.setFont(font)
        Ui_Summary.LBCountL.setStyleSheet("color: rgb(255, 255, 255);")
        Ui_Summary.LBCountL.setAlignment(QtCore.Qt.AlignCenter)
        Ui_Summary.LBCountL.setObjectName("LBCountL")

        # Set Text Default
        _translate = QtCore.QCoreApplication.translate
        LBSummary.setText(_translate("DashbaordWindow", "Summary"))
        LBSumE.setText(_translate("DashbaordWindow", "Total Project Employees"))
        LBSumW.setText(_translate("DashbaordWindow", "Total Weeks"))
        LBSumT.setText(_translate("DashbaordWindow", "Total Transaction Amount"))
        LBSumL.setText(_translate("DashbaordWindow", "Total Labor Amount"))

        Ui_Summary.get_summary()
