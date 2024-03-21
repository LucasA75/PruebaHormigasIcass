from unittest.mock import MagicMock
from clases.Hormiguero import Hormiguero
from services.database_connector import DatabaseConnector

class HormigueroService:
    def __init__(self):
        self.db_connector = DatabaseConnector().connect()

    def get_hormiguero(self):
        return Hormiguero("Nuevo horizonte",1)
    
