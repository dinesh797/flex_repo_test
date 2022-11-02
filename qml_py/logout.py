import json
import requests
from .endpoints import assemble_url
from PySide6.QtCore import QObject, Slot
from qml_py.app_state import AppState

class Logout(QObject):
    def __init__(self, parent=None):
        super(Logout, self).__init__(parent)

    @Slot(result=int)
    def logout(self):
        url = assemble_url('logout')
        ss = AppState.auth_state.api_key 
        header = {
            "x-apikey": ss
        }

        x = requests.get(url, headers=header)
        res = json.loads(x.text)
        return res

