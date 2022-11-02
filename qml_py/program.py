import json
from queue import Empty
from unittest import result
import requests
from .endpoints import assemble_url
from PySide6.QtCore import QObject, Slot
from qml_py.app_state import AppState

class Program(QObject):

    def __init__(self, parent=None):
        super(Program, self).__init__(parent)
        
    @Slot(str,str,str,result=str)
    def save_setting(self,language_ui,font_ui,theme):
        dictionary = {
            "theme": theme, 
            "font": font_ui, 
            "language": language_ui
        }          

        with open("qml_ui/content/theme/appearance_data.json", "w") as outfile:
            json.dump(dictionary, outfile)
            return "Saved"
   
    @Slot(result= 'QVariant')
    def read_setting(self):
        with open("qml_ui/content/theme/appearance_data.json", 'r') as f:
          data = json.load(f)
          if data == None:
              return []

          return data
        return []

    @Slot(result=list)
    def get_programs(self):
        url = assemble_url('get_programs')
        header = {
            "api-key": AppState.auth_state.api_key
        }
        x = requests.get(url, headers=header)
        res = json.loads(x.text)
        data = res['data']
        list = []
        if (data != None):
            for value in data:
                list.append(value)
        return list

    @Slot(str, result=list)
    def delete_program(self, prgid):
        url = assemble_url('delete_program')+prgid

        header = {
            "api-key": AppState.auth_state.api_key
        }
        x = requests.delete(url, headers=header)
        res = json.loads(x.text)

    @Slot(str)
    def add_program(self, prgname1):
        url = assemble_url('create_program')

        header = {
            "api-key": AppState.auth_state.api_key
        }
        data = {
            "name": prgname1,
            "description": prgname1,
            "tags": [],
            "steps": {}
        }
        x = requests.put(url, headers=header, data=json.dumps(data))
        res = json.loads(x.text)

    @Slot(str, 'QVariant', result=str)
    def update_program(self,prgid,steps):
        url = assemble_url('update_program')+prgid

        header = {
            "api-key": AppState.auth_state.api_key,
            "Content-Type": "application/json"
        }
        data = steps.toVariant()
        x = requests.post(url, headers=header, data=json.dumps(data))
        res = json.loads(x.text)
        if (x.status_code ==200):
             return "Saved"
        else:
            return "Not Saved"
 
