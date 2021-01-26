from functools import partial

from PySide2 import QtWidgets, QtCore, QtGui


class Widget(QtWidgets.QWidget):
    def __init__(self, text1, text2, parent=None):
        super().__init__(parent)
        self.departmentNameLine = QtWidgets.QLineEdit(text1)
        self.departmentNameLine.setFixedSize(100, 20)
        self.departmentPathLine = QtWidgets.QLineEdit(text2)
        self.departmentMinusBtn = QtWidgets.QPushButton("-")
        self.departmentMinusBtn.setFixedSize(20, 20)
        self.setContentsMargins(0, 0, 0, 0)
        layout = QtWidgets.QHBoxLayout(self)
        layout.setContentsMargins(0, 0, 0, 0)
        layout.addWidget(self.departmentNameLine)
        layout.addWidget(self.departmentPathLine)
        layout.addWidget(self.departmentMinusBtn)


class PreferenceUI(QtWidgets.QDialog):
    def __init__(self):
        super(PreferenceUI, self).__init__()

        self.widgets = []

        self.setWindowTitle("preference")
        self.create_widgets()
        self.create_layouts()
        self.create_connections()
        self.load_department()

    def create_widgets(self):
        self.departmentPlusBtn = QtWidgets.QPushButton("+")
        self.sysAppendWidget = QtWidgets.QTextEdit()

    def create_layouts(self):
        self.mainLayout = QtWidgets.QFormLayout(self)
        self.departmentLayout = QtWidgets.QVBoxLayout()

        self.departmentLastLayout = QtWidgets.QHBoxLayout()
        self.departmentLayout.addLayout(self.departmentLastLayout)
        self.departmentLayout.addWidget(self.departmentPlusBtn)

        self.mainLayout.addRow("department :", self.departmentLayout)
        self.mainLayout.insertRow(
            self.mainLayout.count() - 1, "sys.path.append :", self.sysAppendWidget
        )

    def create_connections(self):
        self.departmentPlusBtn.clicked.connect(self.add_row)

    def load_department(self):
        jsonDict = {"department": [["temp", "tempPath"], ["temp2", "temp2Path"]]}
        for text1, text2 in jsonDict["department"]:
            self.create_row(text1, text2)

    def save_departament(self):
        l = []
        for widget in self.widgets:
            l.append([self.departmentNameLine.text(), self.departmentPathLine.text()])
        jsonDict = {"department": l}
        print(jsonDict)

    def add_row(self):
        self.create_row("text1", "text2")

    def create_row(self, text1="", text2=""):
        widget = Widget(text1, text2)
        widget.departmentMinusBtn.clicked.connect(partial(self.delete, widget))
        self.departmentLayout.addWidget(widget)
        self.widgets.append(widget)




    def delete(self, widget):
        if widget in self.widgets:
            self.widgets.remove(widget)
        widget.deleteLater()


if __name__ == "__main__":
    import sys

    app = QtWidgets.QApplication(sys.argv)

    w = PreferenceUI()
    w.show()

    sys.exit(app.exec_())