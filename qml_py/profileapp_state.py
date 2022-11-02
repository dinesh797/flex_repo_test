from qml_py.singleton import singleton

class Profile_AuthState:
    def __init__(self, is_logged_in=False, api_key=None, username=None, error=None):
        self.is_logged_in = is_logged_in
        self.api_key = api_key
        self.username = username
        self.error = None

@singleton
class Profile_AppState:
    auth_state = Profile_AuthState()

    def __init__(self):
        pass
