from clases.Hormiga import Hormiga
from services.hormiga_service import HormigaService
from unittest.mock import MagicMock

# Una buena practica aqui es inyectar el servicio y no generar una instancia directa para generar independencia... 

class HormigaController:

    def __init__(self):
        self.service = HormigaService()

    def obtener_hormigas(self):
        return self.service.get_hormigas()

    def obtener_hormiga(self):
        return self.service.get_hormiga()
    
    def agregar_hormiga(self):
        return self.service.add_hormiga("Obrera",1)
    
    def eliminar_hormiga(self):
        return self.service.delete_hormiga()
    
    def iniciar_ruta_hormiga(self):
        return self.service.start_hormiga_rute()