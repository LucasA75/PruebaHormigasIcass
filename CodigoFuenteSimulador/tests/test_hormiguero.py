from unittest.mock import MagicMock
from unittest import TestCase
from services.hormiguero_service import HormigueroService as service_hormiguero


class TestHormiguero(TestCase):

    def test_get_hormiguero(self):
        db_connector_mock = MagicMock()

        # Creamos una instancia de Hormiguero a el mock del conector de base de datos
        hormiguero_service = service_hormiguero(db_connector_mock)

        # Llamamos al método get_hormiguero
        hormiguero = hormiguero_service.get_hormiguero()

        # Verificamos que el método get_hormiguero devuelva lo esperado
        self.assertEqual(hormiguero.nombre, "Nuevo horizonte")