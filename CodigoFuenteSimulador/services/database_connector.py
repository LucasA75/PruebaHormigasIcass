# Ya que no hare la conexion MYSQL porque no funcionara en otro PC y ademas las credenciales son privadas, dejo el codigo de conexion MYSQL para la BASE 
# El codigo lo copie de https://github.com/nicolasmatteo/Python_MYSQL/blob/main/Conexion.py

import mysql.connector
from unittest.mock import MagicMock

class DatabaseConnector:
    def connect(self):
        try:
            conexion = mysql.connector.connect(
                user='...', 
                password='...', 
                host='...', 
                database='', 
                port='...'
            )
            cursor = conexion.cursor()
            return conexion, cursor
        
        except:
            return MagicMock()

