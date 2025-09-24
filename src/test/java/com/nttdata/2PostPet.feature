Feature: Crear un pet id = 827
  Background:
    * url 'https://petstore.swagger.io/v2/pet'
    * header Accept = 'application/json'

  Scenario: Crear la mascota exitosamente
    Given path ''
    And request
      """
      {
        "id": 827,
        "category": {
          "id": 2,
          "name": "perro"
        },
        "name": "krypto",
        "photoUrls": [
          "noPhoto"
        ],
        "tags": [
          {
            "id": 1,
            "name": "salchicha"
          }
        ],
        "status": "available"
      }
      """
    When method post
    Then status 200