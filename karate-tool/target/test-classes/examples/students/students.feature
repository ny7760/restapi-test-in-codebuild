Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'http://127.0.0.1:5000'

  Scenario: get all users and then get the first user by id
    Given path 'students'
    When method get
    Then status 200
      And match response == 
        """
        {
          "name": "Alice"
        }
        """  