from clases.Hormiga import Hormiga

class Hormiguero:
    
    def __init__(self, nombre: str, id:int):
        self.nombre = nombre
        self.id = id
        self.hormigas = {}
    
    def agregar_hormiga(self, hormiga: Hormiga):
        if hormiga.tipo in self.hormigas:
            self.hormigas[hormiga.tipo].append(hormiga)
        else:
            self.hormigas[hormiga.tipo] = [hormiga]
    
    def eliminar_hormiga(self, hormiga: Hormiga):
        if hormiga.tipo in self.hormigas and hormiga in self.hormigas[hormiga.tipo]:
            self.hormigas[hormiga.tipo].remove(hormiga)
            print(f"Hormiga tipo {hormiga.tipo} eliminada")
        else:
            print(f"No se encontró ninguna hormiga del tipo {hormiga.tipo} para eliminar.")
    
    def mostrar_info_hormigas(self):
        print(f"En el hormiguero {self.nombre} hay: {self.cantidad_total_de_hormigas()} hormigas")
        for tipo, lista_hormigas in self.hormigas.items():
            print(f"Hormigas tipo {tipo}: {len(lista_hormigas)} hormigas")
    
    def cantidad_total_de_hormigas(self):
        total_hormigas = sum(len(lista) for lista in self.hormigas.values())
        return total_hormigas