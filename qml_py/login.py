import json
from cerberus import Validator
import requests
from .endpoints import assemble_url
from PySide6.QtCore import QObject, Slot,Signal
from qml_py.app_state import AppState, AuthState

class Login(QObject):
    def __init__(self, parent=None):
        super(Login, self).__init__(parent)
        self.schema = {'principal': {'type': 'string', 'empty': False},
                       'credentials': {'type': 'string', 'empty': False}}
        self.validator = Validator(self.schema)
    sendDict=Signal(dict)

    @Slot(str, str,result='QVariant')
    def login(self, username, password):
        url = assemble_url('login')
    
        # myobj = {
        #     'principal': username,
        #     'credentials': password
        # }

        myobj = {
            'principal': "dinesh_chavan",
            'credentials': "Pa55@word"
        }
        
        if self.validator.validate(myobj, self.schema) == False:
            print(self.validator.errors)
            return False
        error_message='Failed to connect to server'
        try:
            response = requests.post(url, data=json.dumps(myobj))
            if response.text is not None:
                body = json.loads(response.text)
                if body['success']==True:
                    if 'x-apikey' in response.headers:
                        AppState.auth_state = AuthState(
                            is_logged_in=True, api_key=response.headers['x-apikey'], username=username)
            if 'error' in body:
                if 'message' in body['error']:
                    error_message=body['error']['message']
                    AppState.auth_state = AuthState(
                        is_logged_in=False, error=error_message)

        except Exception as e:
            AppState.auth_state = AuthState(
                    is_logged_in=False, error=error_message)

        return AppState.auth_state.as_json()

