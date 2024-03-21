from unittest.mock import MagicMock
from unittest import TestCase
from services.hormiga_service import HormigaService as service_hormiga


class TestHormigas(TestCase):

    def test_get_hormigas(self):
        db_connector_mock = MagicMock()

        # Creamos una instancia de HormigaService con el mock del conector de base de datos
        hormiga_service = service_hormiga(db_connector_mock)

        # Llamamos al método get_hormigas
        hormigas = hormiga_service.get_hormigas()

        # Verificamos que el método get_hormigas devuelva la lista esperada de hormigas
        self.assertEqual(len(hormigas), 2)
        self.assertEqual(hormigas[0].tipo, "obrera")
        self.assertEqual(hormigas[1].tipo, "reina")
        
