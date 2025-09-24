Feature: Obtener todos los pets
  Background:
    * url 'https://petstore.swagger.io/v2/pet/findByStatus'
    * header Accept = 'application/json'

  Scenario: Obtener la lista de pets
    Given path ''
    And param status = 'available'
    When method get
    Then status 200