from PyQt5 import QtCore, QtGui, QtWidgets
import mysql.connector
from PyQt5.QtWidgets import QMessageBox
from db import con
from project_activity import Ui_Activity
from dialogs import Dialog


class Ui_AccountPage(object):
    Username=""
    Password=""
    NewPassword=""
    def successDialog():
        msgBox = QMessageBox()
        msgBox.setIcon(QMessageBox.Information)
        msgBox.setText("Update Success")
        msgBox.setWindowTitle("Message Alert")
        msgBox.setStandardButtons(QMessageBox.Ok)
        msgBox.buttonClicked.connect(msgBox.close)
        Ui_Activity.record_activity("admin",f"Password Updated Successfully")

        returnValue = msgBox.exec()


    def failedDialog():
        msgBox = QMessageBox()
        msgBox.setIcon(QMessageBox.Information)
        msgBox.setText("Update Failed")
        msgBox.setWindowTitle("Message Alert")
        msgBox.setStandardButtons(QMessageBox.Ok)
        msgBox.buttonClicked.connect(msgBox.close)
        Ui_Activity.record_activity("admin",f"Password Update Attempt Failed")

        returnValue = msgBox.exec()

    def updatePw(stack,page):
        username = Ui_AccountPage.Username.text()
        password = Ui_AccountPage.Password.text()
        newpassword = Ui_AccountPage.NewPassword.text()
        conpassword = Ui_AccountPage.ConfirmPassword.text()

        if len(newpassword) > 4:
            if newpassword == conpassword:
                try:
                    cursor = con.cursor()
                    cursor.execute("SELECT * FROM `accounts`")
                    res = cursor.fetchall()
                    for x in res:
                        a=x[1]
                        b=x[2]
                        c=x[0]
                    if (str(a)==str(username)) & (str(b)==str(password)):
                        try:
                            cursor.execute("UPDATE `accounts` SET `password`= %s WHERE `id` = %s",(newpassword,c))
                            con.commit()
                            Ui_AccountPage.successDialog()
                            stack.setCurrentWidget(page)
                            Ui_AccountPage.Username.setText("")
                            Ui_AccountPage.Password.setText("")
                            Ui_AccountPage.NewPassword.setText("")
                            Ui_AccountPage.ConfirmPassword.setText("")
                        except mysql.connector.Error as f:
                            Dialog.msg_dialog(str(f))  
                    else:
                        Dialog.msg_dialog("Update Failed: Invalid Old Password") 

                except mysql.connector.Error as e:
                    Dialog.msg_dialog(str(e))  
            else:
                Dialog.msg_dialog("New Password and Confirm Password Does not Match") 
        else:
            msgBox = QMessageBox()
            msgBox.setIcon(QMessageBox.Information)
            msgBox.setText("Password must be 4 characters long")
            msgBox.setWindowTitle("Message Alert")
            msgBox.setStandardButtons(QMessageBox.Ok)
            msgBox.buttonClicked.connect(msgBox.close)
            returnValue = msgBox.exec()




    def AccountPage(account_page,stackW,page):
        bg = QtWidgets.QLabel(account_page)
        bg.setGeometry(QtCore.QRect(0, 0, 1071, 541))
        bg.setText("")
        bg.setPixmap(QtGui.QPixmap(":/Backgrounds/Assets/Account_Page_Bg.png"))
        bg.setScaledContents(True)
        bg.setObjectName("bg")
        Update = QtWidgets.QPushButton(account_page)
        Update.setGeometry(QtCore.QRect(480, 455, 120, 35))
        font = QtGui.QFont()
        font.setFamily("Calibri")
        font.setPointSize(12)
        font.setBold(True)
        font.setWeight(75)
        Update.setFont(font)
        Update.setLayoutDirection(QtCore.Qt.LeftToRight)
        Update.setStyleSheet("background-color: rgba(0, 0, 0, 0.9);\n"
                                  "color: rgb(255, 255, 255);\n"
                                  "border-radius:5px;\n"
                                  "")
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap(":/Icons/Assets/UploadIcon.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        Update.setIcon(icon)
        Update.setObjectName("Update")
        Ui_AccountPage.Username = QtWidgets.QLineEdit(account_page)
        Ui_AccountPage.Username.setPlaceholderText('Enter Username')
        Ui_AccountPage.Username.setGeometry(QtCore.QRect(425, 200, 240, 30))
        Ui_AccountPage.Username.setObjectName("Ui_AccountPage.Username")
        Ui_AccountPage.Username.setStyleSheet("background-color:white;border-radius:5px;")
        Ui_AccountPage.Password = QtWidgets.QLineEdit(account_page)
        Ui_AccountPage.Password.setPlaceholderText('Enter Password')
        Ui_AccountPage.Password.setEchoMode(QtWidgets.QLineEdit.Password)
        Ui_AccountPage.Password.setGeometry(QtCore.QRect(425, 260, 240, 30))
        Ui_AccountPage.Password.setObjectName("Ui_AccountPage.Password")
        Ui_AccountPage.Password.setStyleSheet("background-color:white;border-radius:5px;")
        Ui_AccountPage.NewPassword = QtWidgets.QLineEdit(account_page)
        Ui_AccountPage.NewPassword.setPlaceholderText('Enter New Password')
        Ui_AccountPage.NewPassword.setEchoMode(QtWidgets.QLineEdit.Password)
        Ui_AccountPage.NewPassword.setGeometry(QtCore.QRect(425, 328, 240, 30))
        Ui_AccountPage.NewPassword.setObjectName("Ui_AccountPage.NewPassword")
        Ui_AccountPage.NewPassword.setStyleSheet("background-color:white;border-radius:5px;")

        Ui_AccountPage.ConfirmPassword = QtWidgets.QLineEdit(account_page)
        Ui_AccountPage.ConfirmPassword.setPlaceholderText('Confirm New Password')
        Ui_AccountPage.ConfirmPassword.setEchoMode(QtWidgets.QLineEdit.Password)
        Ui_AccountPage.ConfirmPassword.setGeometry(QtCore.QRect(425, 393, 240, 30))
        Ui_AccountPage.ConfirmPassword.setObjectName("Ui_AccountPage.ConfirmPassword")
        Ui_AccountPage.ConfirmPassword.setStyleSheet("background-color:white;border-radius:5px;")


        _translate = QtCore.QCoreApplication.translate
        Update.setText(_translate("DashbaordWindow", "  Update"))

        #functions

        Update.clicked.connect(lambda: Ui_AccountPage.updatePw(stackW,page))