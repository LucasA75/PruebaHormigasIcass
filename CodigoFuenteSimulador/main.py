# Estoy suponiendo que existe ya la conexion a la base de datos

from Clases import Hormiga
from Clases import Hormiguero

def iniciar_terminal():
  while True:
        try:
            comando = int(mensaje_inicial())
            if comando == 4:
                print("Saliendo del simulador.")
                break
            elif comando not in [1, 2, 3]:
                print("Comando ingresado no es parte de los comandos válidos.")
            else:
                print("Acción realizada según el comando:", comando)
                if comando is 1:
                    print("Revisar cuantas hormigas hay")
                if comando is 2:
                    print("Agregar una hormiga")
                if comando is 3:
                    print("Eliminar una hormiga")
                
        except ValueError:
            print("Comando ingresado no es un número entero.")

def mensaje_inicial():
    print("##############################")
    print()
    print("Bienvenido al simulador de hormigas")
    print()
    print("##############################")
    print("Ingresa un comando")
    print()
    print("1 - Revisar cuantas hormigas hay")
    print("2 - Agregar una hormiga")
    print("3 - Eliminar una hormiga")
    print("4 - Salir del simulador")
    print()
    print("##############################")
    valor = input("Comando: ")
    return valor

iniciar_terminal()