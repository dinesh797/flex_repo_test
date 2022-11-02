import json
import socket
from .endpoints import assemble_url
import requests
from PySide6.QtCore import QObject, Slot
from qml_py.app_state import AppState

class Setting(QObject):

    def __init__(self, parent=None):
        super(Setting, self).__init__(parent)
        
    # @Slot(result='QString') 
    # def isConnected(self):
    #     try:
    #         sock = socket.create_connection(("www.google.com", 80))
    #         if sock is not None:
    #             sock.close
    #         return "Connected"
    #     except OSError:
    #         pass
    #     return "Not Connected"

    @Slot(result='QVariant')
    def get_setting(self):
        url = assemble_url("get_settings_all")
        header = {
            "api-key": AppState.auth_state.api_key,
            "Content-Type": "application/json"
        }
        x = requests.get(url, headers=header)
        resp = json.loads(x.text)
        # data = resp['data']
        data = None        
        if 'data' in resp:
            data = resp['data']
        
        try:
            if data != None:
                return data
            else:
                raise TypeError
        except TypeError as e:
            return None

    @Slot(str, 'QVariant',result=str)
    def save_setting(self, arm, togle):

        url = assemble_url("get_settings")+arm+"/settings"
        data = togle.toVariant()
        header = {
            "api-key": AppState.auth_state.api_key
        }
        x = requests.post(url, headers=header, data=json.dumps(data))
        resp = json.loads(x.text)
        if (x.status_code=='200'):
            return "Saved"
        else:
            return "Not Saved"

    @Slot(str, result='QVariant')
    def get_robot_position(self, prfid):
        url = assemble_url("robot_position")+"position/?ids="+prfid

        header = {
            "api-key": AppState.auth_state.api_key,
            "Content-Type": "application/json"
        }

        x = requests.get(url, headers=header)
        res = json.loads(x.text)
        # data = res['data']
        data = None
        
        if 'data' in res:
            data = res['data']
        
        return data

    @Slot(str, str, str, result='QVariant')
    def post_robot_position(self, axsA, axsB, prfid):
        url = assemble_url("robot_position")+"position/?ids="+prfid

        data = {
            "axisA": axsA,
            "axisB": axsA,
            # "vacuumCup1": true,
            # "vacuumCup2": true
        }

        header = {
            "api-key": AppState.auth_state.api_key,
            "Content-Type": "application/json"
        }

        x = requests.post(url, headers=header, data=json.dumps(data))
        resp = json.loads(x.text)

    @Slot(str, result='QVariant')
    def save_robot_position(self, prfid):
        url = assemble_url("robot_position")+"position/?ids="+prfid

        header = {
            "api-key": AppState.auth_state.api_key,
            "Content-Type": "application/json"
        }

        x = requests.get(url, headers=header)
        res = json.loads(x.text)
        data = res['data']
        return data
