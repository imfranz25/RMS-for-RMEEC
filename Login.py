#hohoho
import sys
import mysql.connector

from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QApplication, QWidget, QDialog, QPushButton, QMessageBox
from Dashboard import Ui_DashbaordWindow
import datetime
from db import con
from project_activity import Ui_Activity
from dialogs import Dialog


class Ui_LoginWindow(object):

    def dashboard(self):

        self.window = QtWidgets.QMainWindow()
        self.ui = Ui_DashbaordWindow()
        self.ui.setupUi(self.window,Main)
        self.window.show()
        Main.close()
        self.Username.setText("")
        self.Password.setText("")



    def successDialog(self):
        msgBox = QMessageBox()
        msgBox.setIcon(QMessageBox.Information)
        msgBox.setText("Login Success")
        msgBox.setWindowTitle("Message Alert")
        msgBox.setStandardButtons(QMessageBox.Ok)
        msgBox.buttonClicked.connect(self.dashboard)

        returnValue = msgBox.exec()


    def failedDialog(self):
        msgBox = QMessageBox()
        msgBox.setIcon(QMessageBox.Information)
        msgBox.setText("Login Failed")
        msgBox.setWindowTitle("Message Alert")
        msgBox.setStandardButtons(QMessageBox.Ok)
        msgBox.buttonClicked.connect(msgBox.close)

        returnValue = msgBox.exec()



    def check(self):
        username = self.Username.text()
        password = self.Password.text()

        try:
            cursor = con.cursor()
            cursor.execute("SELECT * FROM `accounts`")
            res = cursor.fetchall()
            query1 = "INSERT INTO activity(Act_desc, Act_time,Act_user) VALUES (%s,%s,%s)"
            now = datetime.datetime.now()
            time = now.strftime("%m/%d/%Y - %H:%M")
            for x in res:
                a = x[1]
                b = x[2]

            if (str(a)==str(username)) & (str(b)==str(password)):
                query2 = ('Login Success',time,str(username))
                cursor.execute(query1, query2)
                con.commit()
                self.successDialog()
            else:
                query2 = ('Login Failed', time,str(username))
                cursor.execute(query1, query2)
                con.commit()
                self.failedDialog()

        except mysql.connector.Error as e:
            Dialog.msg_dialog(str(e))  

    def setupUi(self, LoginWindow):
        LoginWindow.setObjectName("LoginWindow")
        LoginWindow.setEnabled(True)
        LoginWindow.resize(1230, 703)
        LoginWindow.setMinimumSize(QtCore.QSize(1230, 703))
        LoginWindow.setMaximumSize(QtCore.QSize(1230, 703))
        LoginWindow.setStyleSheet("")
        self.centralwidget = QtWidgets.QWidget(LoginWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.Continue = QtWidgets.QPushButton(self.centralwidget)
        self.Continue.setGeometry(QtCore.QRect(650, 580, 121, 31))
        self.Continue.clicked.connect(self.check)
        font = QtGui.QFont()
        font.setFamily("Calibri")
        font.setPointSize(12)
        font.setBold(True)
        font.setWeight(75)
        self.Continue.setFont(font)
        self.Continue.setLayoutDirection(QtCore.Qt.RightToLeft)
        self.Continue.setStyleSheet("background-color: rgba(0, 0, 0, 0.9);\n"
                                    "color: rgb(255, 255, 255);\n"
                                    "border-radius:5px;\n"
                                    "")
        self.Continue.setObjectName("Continue")
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap(":/Icons/Assets/ContinueIcon.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.Continue.setIcon(icon)
        self.Username = QtWidgets.QLineEdit(self.centralwidget)
        self.Username.setGeometry(QtCore.QRect(550, 430, 220, 35))
        self.Username.setAutoFillBackground(False)
        self.Username.setObjectName("Username")
        self.Username.setPlaceholderText('Enter Username ')
        self.Username.setStyleSheet("border-radius:5px;")
        self.Password = QtWidgets.QLineEdit(self.centralwidget)
        self.Password.setGeometry(QtCore.QRect(550, 490, 220, 35))
        self.Password.setObjectName("Password")
        self.Password.setEchoMode(QtWidgets.QLineEdit.Password)
        self.Password.setPlaceholderText('Enter Password ')
        self.Password.setStyleSheet("border-radius:5px;")
        self.Username.returnPressed.connect(self.check)
        self.Password.returnPressed.connect(self.check)
        self.Bg = QtWidgets.QLabel(self.centralwidget)
        self.Bg.setEnabled(True)
        self.Bg.setGeometry(QtCore.QRect(0, 0, 1230, 703))
        self.Bg.setMinimumSize(QtCore.QSize(1230, 703))
        self.Bg.setMaximumSize(QtCore.QSize(1230, 703))
        self.Bg.setText("")
        self.Bg.setPixmap(QtGui.QPixmap(":/Backgrounds/Assets/LoginBg.png"))
        self.Bg.setScaledContents(True)
        self.Bg.setObjectName("Bg")
        self.Bg.raise_()
        self.Username.raise_()
        self.Password.raise_()
        self.Continue.raise_()
        LoginWindow.setCentralWidget(self.centralwidget)

        self.retranslateUi(LoginWindow)
        QtCore.QMetaObject.connectSlotsByName(LoginWindow)

    def retranslateUi(self, LoginWindow):
        _translate = QtCore.QCoreApplication.translate
        LoginWindow.setWindowTitle(_translate("LoginWindow", "RMEEC Records Management System"))
        self.Continue.setText(_translate("LoginWindow", "Continue "))
import Images_rc

if __name__ == "__main__":
    app = QtWidgets.QApplication(sys.argv)
    Main = QtWidgets.QMainWindow()
    ui = Ui_LoginWindow()
    ui.setupUi(Main)
    Main.show()
    sys.exit(app.exec())


    #mysql


