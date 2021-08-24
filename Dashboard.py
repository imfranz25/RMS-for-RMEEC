
import sys

from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QApplication, QMessageBox
from PyQt5.QtCore import QDate

from dashboard_page import Ui_DashbaordPage
from account_page import Ui_AccountPage
from employee_page import Ui_EmployeePage

from project_page import Ui_ProjectPage
from project_employee_page import Ui_PE
from project_category import Ui_ProjectCategory
from project_activity import Ui_Activity

from archive_page import Ui_ArchivePage
from archive_employee_page import Ui_AE


from dialogs import Dialog



class Ui_DashbaordWindow(object):

    def confirmDialog(DashboardWindow,Main):
        msgBox = QMessageBox()
        msgBox.setIcon(QMessageBox.Information)
        msgBox.setText("Do you want to Logout?")
        msgBox.setWindowTitle("Confirm")
        msgBox.setStandardButtons(QMessageBox.Ok|QMessageBox.Cancel)
        returnValue = msgBox.exec()

        if returnValue == QMessageBox.Ok:
            try:
                Ui_ProjectPage.flagy=False

                DashboardWindow.close()
                Main.show()
                Ui_Activity.record_activity("admin",f"Account Logged Out")

            except:
                Dialog.msg_dialog(f"Oops! {str(sys.exc_info())} occurred.") 


    def openRecent(item):
        Ui_ProjectPage.get_infoFromRecent(item.value)
        Ui_ProjectPage.set_info()
        Ui_ProjectPage.get_project(Ui_ProjectPage.listWidget)

    def showproject2(self): 
        self.stackedWidget.setCurrentWidget(self.project_page)


        
        

    def showdashboard(self):
        self.stackedWidget.setCurrentWidget(self.dashboard_page)
        Ui_DashbaordPage.getTotalEmployee()
        Ui_DashbaordPage.loadRecent()

    def showproject(self):
        self.stackedWidget.setCurrentWidget(self.project_page)
        self.dashboard.setEnabled(True)
        self.project.setEnabled(True)
        self.employees.setEnabled(True)
        self.archive.setEnabled(True)
        self.edit_history.setEnabled(True)
        self.account.setEnabled(True)
        Ui_PE.StackProject.setCurrentIndex(0)
        Ui_PE.BtnBack.hide()
        Ui_ProjectPage.resetpage()

        # Hide Buttons @ Employee Project Page
        Ui_PE.BtnEditSalary.hide()
        Ui_PE.BtnSaveSalary.hide()
        Ui_PE.BtnCancelSalary.hide()

        Ui_PE.BtnEditAllow.hide()
        Ui_PE.BtnSaveAllow.hide()
        Ui_PE.BtnCancelAllow.hide()
        Ui_PE.BtnAddAllow.hide()
        Ui_PE.BtnRemoveAllow.hide()

        Ui_PE.BtnEditCash.hide()
        Ui_PE.BtnSaveCash.hide()
        Ui_PE.BtnCancelCash.hide()
        Ui_PE.BtnAddCash.hide()
        Ui_PE.BtnLessCash.hide()

        # Reset Selected Row
        Ui_PE.itemid = 0
        Ui_PE.Allowid=0
        Ui_PE.Cashid=0



    def showproject2(self,cat):
        self.stackedWidget.setCurrentWidget(self.project_page)
        self.dashboard.setEnabled(True)
        self.project.setEnabled(True)
        self.employees.setEnabled(True)
        self.archive.setEnabled(True)
        self.edit_history.setEnabled(True)
        self.account.setEnabled(True)
        Ui_PE.StackProject.setCurrentIndex(0)
        Ui_PE.BtnBack.hide()
        Ui_ProjectPage.resetpage2(cat)

        

    def showemployee(self):
        self.stackedWidget.setCurrentWidget(self.employees_page)
        Ui_EmployeePage.set_info()

    def showarchive(self):
        self.stackedWidget.setCurrentWidget(self.archive_page)
        self.dashboard.setEnabled(True)
        self.project.setEnabled(True)
        self.employees.setEnabled(True)
        self.archive.setEnabled(True)
        self.edit_history.setEnabled(True)
        self.account.setEnabled(True)
        Ui_AE.StackProject.setCurrentIndex(0)
        Ui_AE.BtnBack.hide()
        Ui_ArchivePage.resetpage()

    def showaccount(self):
        Ui_AccountPage.Username.setText("")
        Ui_AccountPage.Password.setText("")
        Ui_AccountPage.NewPassword.setText("")
        Ui_AccountPage.ConfirmPassword.setText("")
        self.stackedWidget.setCurrentWidget(self.account_page)

    def showedithistory(self):
        self.stackedWidget.setCurrentWidget(self.activity_log_page)
        Ui_Activity.insert_activity()

    def showproject_info(self):

        self.stackedWidget.setCurrentWidget(self.project_info)

        self.dashboard.setEnabled(False)
        self.project.setEnabled(False)
        self.employees.setEnabled(False)
        self.archive.setEnabled(False)
        self.edit_history.setEnabled(False)
        self.account.setEnabled(False)
        
        Ui_PE.BtnBack.show()
        Ui_PE.projectid=Ui_ProjectPage.itemid
        Ui_PE.getProjEmp()
        Ui_PE.setProjectTitle()

        Ui_Activity.record_activity("admin",f"{Ui_ProjectPage.itemid}")

        Ui_PE.LEName.setText("")
        Ui_PE.LEAge.setText("")
        Ui_PE.LEContact.setText("")
        Ui_PE.LESex.setText("")
        Ui_PE.LEJob.setText("")
    
        Ui_PE.ImgEmployee.clear()
        Ui_PE.ImgEmployee.setStyleSheet("color: rgb(255, 255, 255);\n"
                                                    "background-color: rgba(0, 0, 0,0.8);")
        Ui_PE.ImgEmployee.setText("")
    
        Ui_PE.LEBday.setText("")

        Ui_PE.LERate.setText("Rate/Hour")
        now  = QDate.currentDate()
        Ui_PE.DateWorkStart.setDate(now)
        Ui_PE.DateWorkEnd.setDate(now)

        while (Ui_PE.TBLAllowance.rowCount() > 0):
            Ui_PE.TBLAllowance.removeRow(0)

        while (Ui_PE.TBLCash.rowCount() > 0):
            Ui_PE.TBLCash.removeRow(0)

    def showarchive_info(self):
        self.stackedWidget.setCurrentWidget(self.archive_info)
        self.dashboard.setEnabled(False)
        self.project.setEnabled(False)
        self.employees.setEnabled(False)
        self.archive.setEnabled(False)
        self.edit_history.setEnabled(False)
        self.account.setEnabled(False)
        Ui_AE.BtnBack.show()
        Ui_AE.projectid=Ui_ArchivePage.itemid
        Ui_AE.getProjEmp()
        Ui_AE.setProjectTitle()

        Ui_AE.LEName.setText("")
        Ui_AE.LEAge.setText("")
        Ui_AE.LEContact.setText("")
        Ui_AE.LESex.setText("")
        Ui_AE.LEJob.setText("")
    
        Ui_AE.ImgEmployee.clear()
        Ui_AE.ImgEmployee.setStyleSheet("color: rgb(255, 255, 255);\n"
                                                    "background-color: rgba(0, 0, 0,0.8);")
        Ui_AE.ImgEmployee.setText("")
    
        Ui_AE.LEBday.setText("")

        Ui_AE.LERate.setText("Rate/Hour")
        now  = QDate.currentDate()
        Ui_AE.DateWorkStart.setDate(now)
        Ui_AE.DateWorkEnd.setDate(now)

        while (Ui_AE.TBLAllowance.rowCount() > 0):
            Ui_AE.TBLAllowance.removeRow(0)

        while (Ui_AE.TBLCash.rowCount() > 0):
            Ui_AE.TBLCash.removeRow(0)

        




    def showprojectcategory(self):
        self.stackedWidget.setCurrentWidget(self.project_category)
        Ui_ProjectCategory.updateCount()




    def setupUi(self,DashbaordWindow,Main):

        DashbaordWindow.setObjectName("DashbaordWindow")
        DashbaordWindow.setEnabled(True)
        DashbaordWindow.resize(1230, 703)
        DashbaordWindow.setMinimumSize(QtCore.QSize(1230, 703))
        DashbaordWindow.setMaximumSize(QtCore.QSize(1230, 703))
        DashbaordWindow.setStyleSheet("")
        self.centralwidget = QtWidgets.QWidget(DashbaordWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.Bg = QtWidgets.QLabel(self.centralwidget)
        self.Bg.setEnabled(True)
        self.Bg.setGeometry(QtCore.QRect(0, 0, 1230, 703))
        self.Bg.setMinimumSize(QtCore.QSize(1230, 703))
        self.Bg.setMaximumSize(QtCore.QSize(1230, 703))
        self.Bg.setText("")
        self.Bg.setPixmap(QtGui.QPixmap(":/Backgrounds/Assets/DashboardBg.png"))
        self.Bg.setScaledContents(True)
        self.Bg.setObjectName("Bg")
        self.dashboard = QtWidgets.QPushButton(self.centralwidget)
        self.dashboard.setGeometry(QtCore.QRect(38, 67, 65, 59))
        self.dashboard.setStyleSheet("background-image: url(:/Buttons/Assets/dashboard_button.png);\n"
                                     "background-repeat: no-repeat;\n"
                                     "background-size: auto;\n"
                                     "border:none;\n"
                                     "border-radius:8px;\n"
                                     "box-shadow: 5px 10px #888888;")
        self.dashboard.setText("")
        self.dashboard.setObjectName("dashboard")
        self.project = QtWidgets.QPushButton(self.centralwidget)
        self.project.setGeometry(QtCore.QRect(38, 156, 65, 59))
        self.project.setStyleSheet("background-image: url(:/Buttons/Assets/project_button.png);\n"
                                   "background-repeat: no-repeat;\n"
                                   "background-size: auto;\n"
                                   "border:none;\n"
                                   "border-radius:8px;")
        self.project.setText("")
        self.project.setObjectName("project")
        self.employees = QtWidgets.QPushButton(self.centralwidget)
        self.employees.setGeometry(QtCore.QRect(38, 240, 65, 59))
        self.employees.setStyleSheet("background-repeat: no-repeat;\n"
                                     "background-size: auto;\n"
                                     "border:none;\n"
                                     "border-radius:8px;\n"
                                     "background-image: url(:/Buttons/Assets/employee_button.png);")
        self.employees.setText("")
        self.employees.setObjectName("employees")
        self.archive = QtWidgets.QPushButton(self.centralwidget)
        self.archive.setGeometry(QtCore.QRect(38, 330, 65, 59))
        self.archive.setStyleSheet("background-repeat: no-repeat;\n"
                                   "background-image: url(:/Buttons/Assets/archive_button.png);\n"
                                   "background-size: auto;\n"
                                   "border:none;\n"
                                   "border-radius:8px;")
        self.archive.setText("")
        self.archive.setObjectName("archive")
        self.edit_history = QtWidgets.QPushButton(self.centralwidget)
        self.edit_history.setGeometry(QtCore.QRect(38, 419, 65, 59))
        self.edit_history.setStyleSheet("background-repeat: no-repeat;\n"
                                        "background-image: url(:/Buttons/Assets/edit_history_button.png);\n"
                                        "background-size: auto;\n"
                                        "border:none;\n"
                                        "border-radius:8px;")
        self.edit_history.setText("")
        self.edit_history.setObjectName("edit_history")
        self.account = QtWidgets.QPushButton(self.centralwidget)
        self.account.setGeometry(QtCore.QRect(38, 507, 65, 59))
        self.account.setCursor(QtGui.QCursor(QtCore.Qt.ArrowCursor))
        self.account.setAutoFillBackground(False)
        self.account.setStyleSheet("background-repeat: no-repeat;\n"
                                   "background-image: url(:/Buttons/Assets/account_button.png);\n"
                                   "background-size: auto;\n"
                                   "border:none;\n"
                                   "border-radius:8px;")
        self.account.setText("")
        self.account.setObjectName("account")
        self.logout = QtWidgets.QPushButton(self.centralwidget)
        self.logout.setGeometry(QtCore.QRect(38, 597, 65, 59))
        self.logout.setStyleSheet("background-repeat: no-repeat;\n"
                                  "background-image: url(:/Buttons/Assets/logout_button.png);\n"
                                  "background-size: auto;\n"
                                  "border:none;\n"
                                  "border-radius:8px;")
        self.logout.setText("")
        self.logout.setObjectName("logout")
        self.stackedWidget = QtWidgets.QStackedWidget(self.centralwidget)
        self.stackedWidget.setGeometry(QtCore.QRect(157, 167, 1063, 520))
        self.stackedWidget.setStyleSheet("background:transparent;")
        self.stackedWidget.setObjectName("stackedWidget")
        self.dashboard_page = QtWidgets.QWidget()
        self.dashboard_page.setStyleSheet("")
        self.dashboard_page.setObjectName("dashboard_page")
        self.stackedWidget.addWidget(self.dashboard_page)
        self.project_page = QtWidgets.QWidget()
        self.project_page.setStyleSheet("")
        self.project_page.setObjectName("project_page")
        self.stackedWidget.addWidget(self.project_page)
        self.employees_page = QtWidgets.QWidget()
        self.employees_page.setStyleSheet("")
        self.employees_page.setObjectName("employees_page")
        self.stackedWidget.addWidget(self.employees_page)
        self.archive_page = QtWidgets.QWidget()
        self.archive_page.setObjectName("archive_page")
        self.stackedWidget.addWidget(self.archive_page)
        self.activity_log_page = QtWidgets.QWidget()
        self.activity_log_page.setObjectName("activity_log_page")
        self.stackedWidget.addWidget(self.activity_log_page)
        self.account_page = QtWidgets.QWidget()
        self.account_page.setStyleSheet("")
        self.account_page.setObjectName("account_page")
        self.stackedWidget.addWidget(self.account_page)

        #Project Info page

        self.project_info = QtWidgets.QWidget()
        self.project_info.setStyleSheet("")
        self.project_info.setObjectName("account_page")
        self.stackedWidget.addWidget(self.project_info)


        #Project Info page

        self.archive_info = QtWidgets.QWidget()
        self.archive_info.setStyleSheet("")
        self.archive_info.setObjectName("archive_info")
        self.stackedWidget.addWidget(self.archive_info)

        #category page

        self.project_category = QtWidgets.QWidget()
        self.project_category.setStyleSheet("")
        self.project_category.setObjectName("project_category")
        self.stackedWidget.addWidget(self.project_category)

        self.TxtDashboard = QtWidgets.QLabel(self.centralwidget)
        self.TxtDashboard.setGeometry(QtCore.QRect(32, 130, 75, 21))
        font = QtGui.QFont()
        font.setPointSize(12)
        self.TxtDashboard.setFont(font)
        self.TxtDashboard.setStyleSheet("color: rgb(255, 255, 255);")
        self.TxtDashboard.setMidLineWidth(-2)
        self.TxtDashboard.setObjectName("TxtDashboard")
        self.TxtProject = QtWidgets.QLabel(self.centralwidget)
        self.TxtProject.setGeometry(QtCore.QRect(46, 216, 75, 21))
        font = QtGui.QFont()
        font.setPointSize(12)
        self.TxtProject.setFont(font)
        self.TxtProject.setStyleSheet("color: rgb(255, 255, 255);")
        self.TxtProject.setMidLineWidth(-2)
        self.TxtProject.setObjectName("TxtProject")
        self.TxtEmployee = QtWidgets.QLabel(self.centralwidget)
        self.TxtEmployee.setGeometry(QtCore.QRect(34, 304, 75, 21))
        font = QtGui.QFont()
        font.setPointSize(12)
        self.TxtEmployee.setFont(font)
        self.TxtEmployee.setStyleSheet("color: rgb(255, 255, 255);")
        self.TxtEmployee.setMidLineWidth(-2)
        self.TxtEmployee.setObjectName("TxtEmployee")
        self.TxtArchive = QtWidgets.QLabel(self.centralwidget)
        self.TxtArchive.setGeometry(QtCore.QRect(44, 394, 75, 21))
        font = QtGui.QFont()
        font.setPointSize(12)
        self.TxtArchive.setFont(font)
        self.TxtArchive.setStyleSheet("color: rgb(255, 255, 255);")
        self.TxtArchive.setMidLineWidth(-2)
        self.TxtArchive.setObjectName("TxtArchive")
        self.TxtEditHistory = QtWidgets.QLabel(self.centralwidget)
        self.TxtEditHistory.setGeometry(QtCore.QRect(29, 482, 91, 21))
        font = QtGui.QFont()
        font.setPointSize(12)
        self.TxtEditHistory.setFont(font)
        self.TxtEditHistory.setStyleSheet("color: rgb(255, 255, 255);")
        self.TxtEditHistory.setMidLineWidth(-2)
        self.TxtEditHistory.setObjectName("TxtEditHistory")
        self.TxtLogout = QtWidgets.QLabel(self.centralwidget)
        self.TxtLogout.setGeometry(QtCore.QRect(47, 660, 75, 21))
        font = QtGui.QFont()
        font.setPointSize(12)
        self.TxtLogout.setFont(font)
        self.TxtLogout.setStyleSheet("color: rgb(255, 255, 255);")
        self.TxtLogout.setMidLineWidth(-2)
        self.TxtLogout.setObjectName("TxtLogout")
        self.TxtAccount = QtWidgets.QLabel(self.centralwidget)
        self.TxtAccount.setGeometry(QtCore.QRect(41, 572, 75, 21))
        font = QtGui.QFont()
        font.setPointSize(12)
        self.TxtAccount.setFont(font)
        self.TxtAccount.setStyleSheet("color: rgb(255, 255, 255);")
        self.TxtAccount.setMidLineWidth(-2)
        self.TxtAccount.setObjectName("TxtAccount")
        DashbaordWindow.setCentralWidget(self.centralwidget)

        self.retranslateUi(DashbaordWindow)
        self.stackedWidget.setCurrentIndex(1)
        QtCore.QMetaObject.connectSlotsByName(DashbaordWindow)



        # functions
        self.dashboard.clicked.connect(self.showdashboard)
        self.project.clicked.connect(self.showproject)
        self.employees.clicked.connect(self.showemployee)
        self.archive.clicked.connect(self.showarchive)
        self.edit_history.clicked.connect(self.showedithistory)
        self.account.clicked.connect(self.showaccount)

        self.logout.clicked.connect(lambda: Ui_DashbaordWindow.confirmDialog(DashbaordWindow,Main))

        #Pages imports
        self.stackedWidget.setCurrentWidget(self.dashboard_page)

        Ui_DashbaordPage.DashboardPage(self.dashboard_page)
        Ui_ProjectPage.ProjectPage(self.project_page,DashbaordWindow)
        Ui_ArchivePage.ProjectPage(self.archive_page,DashbaordWindow)
        Ui_AccountPage.AccountPage(self.account_page,self.stackedWidget,self.dashboard_page)
        Ui_EmployeePage.EmployeePage(self.employees_page, DashbaordWindow)
        Ui_PE.PE(self.project_info,DashbaordWindow)
        Ui_AE.PE(self.archive_info,DashbaordWindow)
        Ui_ProjectCategory.ProjectCategory(self.project_category)
        Ui_Activity.Activity(self.activity_log_page)

        #open button

        Ui_ProjectPage.open_project_btn.clicked.connect(self.showproject_info)
        Ui_ArchivePage.open_project_btn.clicked.connect(self.showarchive_info)

        Ui_PE.BtnBack.clicked.connect(self.showproject)
        Ui_AE.BtnBack.clicked.connect(self.showarchive)

        #project category button

        Ui_DashbaordPage.project_category.clicked.connect(self.showprojectcategory)
        
        Ui_DashbaordPage.project_list.itemClicked.connect(self.showproject2)
        Ui_DashbaordPage.project_list.itemClicked.connect(Ui_DashbaordWindow.openRecent)

        #cat btn

        Ui_ProjectCategory.BtnMechanical.clicked.connect(lambda: Ui_DashbaordWindow.showproject2(self,"Mechanical Works"))
        Ui_ProjectCategory.BtnCivil.clicked.connect(lambda: Ui_DashbaordWindow.showproject2(self,"Civil Works"))
        Ui_ProjectCategory.BtnElectrical.clicked.connect(lambda: Ui_DashbaordWindow.showproject2(self,"Electrical Works"))
        Ui_ProjectCategory.BtnFire.clicked.connect(lambda: Ui_DashbaordWindow.showproject2(self,"Fire Protection"))
        Ui_ProjectCategory.BtnPlumbing.clicked.connect(lambda: Ui_DashbaordWindow.showproject2(self,"Plumbing Works"))
        Ui_ProjectCategory.BtnArchitectural.clicked.connect(lambda: Ui_DashbaordWindow.showproject2(self,"Architechtural Works"))




    def retranslateUi(self, DashbaordWindow):
        _translate = QtCore.QCoreApplication.translate
        DashbaordWindow.setWindowTitle(_translate("DashbaordWindow", "RMEEC Records Management System"))
        self.TxtDashboard.setText(_translate("DashbaordWindow", "Dashboard"))
        self.TxtProject.setText(_translate("DashbaordWindow", "Project"))
        self.TxtEmployee.setText(_translate("DashbaordWindow", "Employee"))
        self.TxtArchive.setText(_translate("DashbaordWindow", "Archive"))
        self.TxtEditHistory.setText(_translate("DashbaordWindow", "Activity Log"))
        self.TxtLogout.setText(_translate("DashbaordWindow", "Logout"))
        self.TxtAccount.setText(_translate("DashbaordWindow", "Account"))
import Images_rc

