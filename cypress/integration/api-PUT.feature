
Feature: Rest API GET call

  Scenario: Update User

    Given I set Content-Type header to application/json value
    When I make GET call to https://petstore.swagger.io/v2/user/login?username=markhowell&password=markhowell
    Then Response code should be 200
    When I set request body to {"id": 14,"username": "markbaur","firstName": "Mark","lastName": "Baur","email": "markhowell@yahoo.com","password": "markhowell","phone": "7448889998","userStatus": 0}
    Then I make PUT call to https://petstore.swagger.io/v2/user/markbaur
    Then Response code should be 200
    When I make GET call to https://petstore.swagger.io/v2/user/markbaur
    And Response body should contain a key username with a value markbaur

