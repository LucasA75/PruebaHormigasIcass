# Estoy suponiendo que existe ya la conexion a la base de datos, hare las consultas a MOCKs que realize
# python -m unittest discover tests para correr los tests

from controller.hormiga_controller import HormigaController


def iniciar_terminal():
    """
    Función para iniciar el simulador de terminal.
    Permite al usuario realizar acciones relacionadas con hormigas
    hasta que decida salir del simulador.
    """
    while True:
        try:
            comando = int(mensaje_inicial())
            if comando == 4:
                print("Saliendo del simulador.")
                break
            elif comando not in [1, 2, 3]:
                print("Comando ingresado no es parte de los comandos válidos.")
            else:
                if comando == 1:
                    print("Revisar cuantas hormigas hay")
                    print(f"Hay {len(HormigaController().obtener_hormigas())} hormigas")
                if comando == 2:
                    HormigaController().agregar_hormiga()
                if comando == 3:
                    HormigaController().eliminar_hormiga()

        except ValueError:
            print("Comando ingresado no es un número entero.")

        finally:
            print()
            print("##############################")
            input("Presiona enter para continuar")
                

def mensaje_inicial():
    """
    Función para mostrar el mensaje inicial y obtener el comando del usuario.
    """
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