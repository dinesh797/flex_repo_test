import json
import requests
from PySide6.QtCore import QObject, Slot
from qml_py.profileapp_state import Profile_AppState

class Profile(QObject):

    def __init__(self, parent=None):
        super(Profile, self).__init__(parent)

    @Slot(result='QVariant')
    def get_allprofile(self):
        url = "http://192.168.1.29:81/api/v1/people/search"

        header = {
            "x-apikey": Profile_AppState.auth_state.api_key,
            "Content-Type": "application/json"
        }
        x = requests.get(url, headers=header)
        resp = json.loads(x.text)
        data = resp['data']['results']
        return data

    @Slot(str, str, str, str, str, str, str, int, str, result='QVariant')
    def create_profile(self, firstname, lastname, email, contact, gender, dob, height, weight, ethnicity):
        url = "http://192.168.1.29:81/api/v1/people"
        data = {
            "name": firstname,
            "familyName": lastname,
            "email": email,
            "gender": gender,
            "birthday": dob,
            "weight": weight,
            "height": float(height),
            "mobile": contact,
            "ethnicity": ethnicity
        }
        header = {
            "x-apikey": Profile_AppState.auth_state.api_key,
            "Content-Type": "application/json"
        }

        x = requests.post(url, headers=header, data=json.dumps(data))
        resp = json.loads(x.text)
        return resp['data']

    @Slot(str)
    def delete_profile(self, prfid):
        url = "http://192.168.1.29:81/api/v1/people/"+prfid

        header = {
            "x-apikey": Profile_AppState.auth_state.api_key,
            "Content-Type": "application/json"
        }
        x = requests.delete(url, headers=header)

    @Slot(str, str, str, str, str, str, str, int, str, str, result='QVariant')
    def update_profile(self, firstname, lastname, email, contact, gender, dob, height, weight, ethnicity, prfid):
        url = "http://192.168.1.29:81/api/v1/people/"+prfid

        header = {
            "x-apikey": Profile_AppState.auth_state.api_key,
            "Content-Type": "application/json"
        }
        data = {
            "name": firstname,
            "familyName": lastname,
            "email": email,
            "gender": gender,
            "birthday": dob,
            "weight": weight,
            "height": float(height),
            "mobile": contact,
            "ethnicity": ethnicity
        }
        x = requests.put(url, headers=header, data=json.dumps(data))
        res = json.loads(x.text)
        return res['data']

    @Slot(str, result='QVariant')
    def get_profile(self, prfid):
        url = "http://192.168.1.29:81/api/v1/people/"+prfid

        header = {
            "x-apikey": Profile_AppState.auth_state.api_key,
            "Content-Type": "application/json"
        }
        x = requests.get(url, headers=header)
        resp = json.loads(x.text)
        data = resp['data']
        return data

    @Slot(str, result='QVariant')
    def search_profile(self, prfid):
        url = "http://192.168.1.29:81/api/v1/people/search"

        params = {
            "search": prfid
        }
        header = {
            "x-apikey": Profile_AppState.auth_state.api_key,
            "Content-Type": "application/json"
        }
        x = requests.get(url, headers=header, params=params)
        resp = json.loads(x.text)
        data = resp['data']['results']
        return data

    @Slot(str, str, result='QVariant')
    def sort_profile(self, name, sort):
        url = "http://192.168.1.29:81/api/v1/people/search"

        params = {
            "orderBy": name+":" + sort
        }
        header = {
            "x-apikey": Profile_AppState.auth_state.api_key,
            "Content-Type": "application/json"
        }
        x = requests.get(url, headers=header, params=params)
        resp = json.loads(x.text)
        data = resp['data']['results']
        return data
