from datetime import date

class Hormiga:
    
    def __init__(self, tipo_hormiga: str, id: int, fecha_de_nacimiento: date, estado: str,colonia_id: int,):
        self.tipo = tipo_hormiga
        self.id = id
        self.fecha_de_nacimiento = fecha_de_nacimiento
        self.estado = estado
        self.colonia_id = colonia_id

    
    def iniciar_ruta():
        print("Esta hormiga ha iniciado una nueva ruta")

