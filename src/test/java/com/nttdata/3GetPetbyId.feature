Feature: Obtener un pet por ID = 827
  Background:
    * url 'https://petstore.swagger.io/v2/pet'
    * header Accept = 'application/json'

  Scenario: Obtener una mascota con id = 827
    Given path 827
    When method get
    Then status 200