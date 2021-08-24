
from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QMessageBox, QDialog

class Dialog(object):

    def msg_dialog(msg):

        msgBox = QMessageBox()
        msgBox.setIcon(QMessageBox.Information)
        msgBox.setText(msg)
        msgBox.setWindowTitle("Message Alert")
        msgBox.setStandardButtons(QMessageBox.Ok)
        msgBox.buttonClicked.connect(msgBox.close)
        returnValue = msgBox.exec()
        # if returnValue == QMessageBox.Ok:

    def confirm_dialog(msg):

        msgBox = QMessageBox()
        msgBox.setIcon(QMessageBox.Information)
        msgBox.setText(msg)
        msgBox.setWindowTitle("Message Alert")
        msgBox.setStandardButtons(QMessageBox.Ok | QMessageBox.Cancel)
        msgBox.buttonClicked.connect(msgBox.close)

        return msgBox.exec()
        

    """
    if (Dialog.confirm_dialog("Are You Sure You Want To Save ?") == QMessageBox.Ok):
        print("Saved")

    """

