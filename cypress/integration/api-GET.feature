
Feature: Rest API GET call

  Scenario Outline: Get user details by username

    Given I set Content-Type header to application/json value
    Then I make GET call to <url>
    Then Response code should be 200
    Then Response body should contain a key <jsonKey1> with a value <jsonValue1>
    Then Response body should contain a key <jsonKey2> with a value <jsonValue2>
    Then Response body should contain a key <jsonKey3> with a value <jsonValue3>

    Examples:
    |url                                         | jsonKey1 |jsonValue1| jsonKey2| jsonValue2|jsonKey3|jsonValue3|
    |https://petstore.swagger.io/v2/user/jimbrown| firstName|  Jim     | lastName|   Brown   |  id    |  11      |
    |https://petstore.swagger.io/v2/user/markjowell| firstName|  Mark  | lastName|   Howell  |  id    |  14      |