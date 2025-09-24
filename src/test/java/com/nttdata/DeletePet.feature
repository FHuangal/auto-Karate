Feature: Eliminar un pet con id = 827

  Background:
    * url 'https://petstore.swagger.io/v2/pet'
    * header Accept = 'application/json'

  Scenario: Eliminar la mascota con id = 827
    Given path 827
    When method delete
    Then status 200
    * print 'Mascota eliminada exitosamente'