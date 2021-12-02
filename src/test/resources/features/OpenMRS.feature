Feature: Open MRS tests

  Scenario: Register a patient
    Given I'm logged in to OpenMRS with following credentials:
    |username | admin    |
    |password | Admin123 |

    When I register a new patient with following info:
    |GivenName | John           |
    |FamilyName| Smith          |
    |Gender    | Male           |
    |Day       | 1              |
    | Month | January           |
    | Year | 1998               |
    |Address | 2200 E Devon ave |
    |Phone   | 312 312 3123     |

    Scenario Outline:
      Given I'm logged in to OpenMRS with <username> and <password>
      When I register a new patient with "<GivenName>", "<FamilyName>", "<Gender>", "<Day>", "<Month>", <Year>, "<Address>" and "<Phone>"

      Examples:
      |GivenName | FamilyName | Gender| Day | Month   | Year | Address | Phone | username  | password |
      | Jerry    |  White     | Male  | 11  |January  | 1987 | Chicago |1234556| admin     | Admin123 |
      | Sarah    | Green      | Female| 32  |  March  | 1973 | Chicago |1267777| admin     | Admin123 |


      @test
      Scenario: Test scenario
        When I test OpenMRS
        Then test passes
