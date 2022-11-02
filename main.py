import os
import profile
import sys
from pathlib import Path
from PySide6.QtCore import Signal, Slot,QTranslator,QDir,QObject
from PySide6.QtGui import QGuiApplication,QStandardItemModel
from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtWidgets import QApplication
from qml_py.login import Login
from qml_py.profilelogin import Profile_Login
from qml_py.logout import Logout
from qml_py.program import Program
from qml_py.setting import Setting
from qml_py.profile import Profile

CURRENT_DIRECTORY = Path(__file__).resolve().parent
QML_DIRECTORY = CURRENT_DIRECTORY / "qml_ui/content"
TRANSLATIONS_DIR = CURRENT_DIRECTORY / "qml_ui/content/translation"

# def is_connected():
#     try:
#         s  = socket.socket()
#         s.connect(('google.com',443))
#         s.close()
#         return True
#     except:
#         return False

# t=time.time()
# if is_connected():
#     print("connected")
# else:
#     print("no internet!")
# print(time.time()-t)

class Main_app(QObject):
    language_changed = Signal(name="languageChanged")

    def __init__(self, engine, parent=None):
        super().__init__(parent)
        self._engine = engine
        self._languages_model = QStandardItemModel()
        self._translator = QTranslator()

    @Slot(str)
    def set_language(self, language):
        if language != "Default":
            trans_dir = QDir(os.fspath(TRANSLATIONS_DIR))
            filename = trans_dir.filePath(f"App_{language}.qm")
            if not self._translator.load(filename):
                pass
            QGuiApplication.installTranslator(self._translator)
        else:
            QGuiApplication.removeTranslator(self._translator)
        self._engine.retranslate()

if __name__ == "__main__":
    os.environ['QT_QUICK_CONTROLS_STYLE'] = "Material"
    os.environ['QT_QUICK_CONTROLS_MATERIAL_THEME'] = "Dark"
    os.environ['QT_QUICK_CONTROLS_MATERIAL_FOREGROUND'] = "White"
    os.environ['QT_QUICK_CONTROLS_MATERIAL_BACKGROUND'] = "Grey"
    sys.argv += ['--theme', 'Dark']
    app = QApplication(sys.argv)
    engine = QQmlApplicationEngine()

    login = Login()
    program = Program()
    setting = Setting()
    logout = Logout()
    profilelogin = Profile_Login()
    profile = Profile()
    
    engine.rootContext().setContextProperty("login", login)
    engine.rootContext().setContextProperty("program", program)
    engine.rootContext().setContextProperty("setting", setting)
    engine.rootContext().setContextProperty("logout", logout)
    engine.rootContext().setContextProperty("profilelogin", profilelogin)
    engine.rootContext().setContextProperty("profile", profile)

    main_app = Main_app(engine, app)

    engine.rootContext().setContextProperty("main_app", main_app)

    if getattr(sys, 'frozen', False):
        engine.load(os.fspath(Path().resolve().parent /
                              "qml_ui/content/MainStack.qml"))
    else:
        engine.load(os.fspath(Path(__file__).resolve().parent /
                              "qml_ui/content/MainStack.qml"))

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())
