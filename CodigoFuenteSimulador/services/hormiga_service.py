from unittest.mock import MagicMock
from clases.Hormiga import Hormiga
import datetime
from services.database_connector import DatabaseConnector

class HormigaService:
    def __init__(self):
        self.db_connector = DatabaseConnector().connect()

    def get_hormigas(self):
        # Comando SQL 
        # consulta = "SELECT tipo, fecha_nacimiento, estado, colonia_id FROM hormigas"
        # cursor.execute(consulta)
        # conexion.commit()
        #self.db_connector[1].execute(consulta)
        #self.db_connector[0].commit()
        return [Hormiga("obrera",1,"2024-03-21","viva",1), Hormiga("reina",2,"2024-03-21","viva",1)]
    
    def get_hormiga(self):
        # Comando SQL 
        # SELECT Id,tipo, fecha_nacimiento, estado, colonia_id FROM hormigas WHERE id = 1;
        return [Hormiga("obrera",1,"2024-03-21","viva",1)]
    
    def add_hormiga(self,tipo,colonia):
        # Comando SQL 
        # INSERT INTO hormigas (tipo, fecha_nacimiento, estado, colonia_id) 
        # VALUES ('obrera', '2024-03-21', 'viva', 1);;
        new_hormiga = Hormiga(tipo,3,datetime.date.today(),"viva",colonia)
        return print(f"Hormiga {new_hormiga.id} añadida a la colonia {colonia}")
    
    def delete_hormiga(self):
        # Comando SQL 
        # DELETE FROM hormigas WHERE id = 1;
        return print("Hormiga eliminada")
    
    def start_hormiga_rute(self):
        # Comando SQL 
        # UPDATE hormigas SET estado = 'en ruta' WHERE id = 1;
        return print("Hormiga empezo una ruta")
