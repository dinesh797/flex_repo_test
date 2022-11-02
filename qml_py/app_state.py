from qml_py.singleton import singleton

class AuthState:
    def __init__(self, is_logged_in=False, api_key=None, username=None, error=None):
        self.is_logged_in = is_logged_in
        self.api_key = api_key
        self.username = username
        self.error = error
    
    def as_json(self):
        dct={}
        dct['is_logged_in']=self.is_logged_in
        dct['api_key']=self.api_key if self.api_key is not None else ''
        dct['username']=self.username if self.username is not None else ''
        if self.error is not None:
            dct['error']=self.error
        return dct


@singleton
class AppState:
    auth_state = AuthState()

    def __init__(self):
        pass
