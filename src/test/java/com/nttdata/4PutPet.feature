Feature: Actualizar el pet con id = 827

  Background:
    * url 'https://petstore.swagger.io/v2/pet'
    * header Accept = 'application/json'

  Scenario: Actualizar un pet existente y válido
    Given path ''
    And request
      """
      {
        "id": 827,
        "category": {
          "id": 1,
          "name": "gato"
        },
        "name": "krypto",
        "photoUrls": [
          "noPhoto"
        ],
        "tags": [
          {
            "id": 1,
            "name": "siamés"
          }
        ],
        "status": "available"
      }
      """
    When method put
    Then status 200