from distutils.log import error
import json
import requests
from PySide6.QtCore import QObject, Slot
from qml_py.profileapp_state import Profile_AppState, Profile_AuthState

class Profile_Login(QObject):
    def __init__(self, parent=None):
        super(Profile_Login, self).__init__(parent)

    @Slot(result=bool)
    def profilelogin(self):
        
        url = "http://192.168.1.29:81/api/v1/auth/login"

        myobj = {'principal': "sysadmin", 'credentials': "Pa55@word"}
        header = {
            'x-org': "cyberdyne",
            "Content-Type": "application/json"
        }

        x = requests.post(url, data=(json.dumps(myobj)), headers=header)

        if 'x-apikey' in x.headers:
            Profile_AppState.auth_state = Profile_AuthState(
                is_logged_in=True, api_key=x.headers['x-apikey'], username='sysadmin')
            return True
        else:
            Profile_AppState.auth_state = Profile_AuthState(
                is_logged_in=False, error="invalid credentials")
            self.errortext = error
            return False
