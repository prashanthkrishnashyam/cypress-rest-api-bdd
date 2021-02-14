
Feature: Rest API POST call

  Scenario: Create User

    Given I set Content-Type header to application/json value
    And I set request body to {"id": 14,"username": "markhowell","firstName": "Mark","lastName": "Howell","email": "markhowell@yahoo.com","password": "markhowell","phone": "7448889998","userStatus": 0}
    Then I make POST call to https://petstore.swagger.io/v2/user
    Then Response code should be 200
    Then Response body should contain a key message with a value 14
