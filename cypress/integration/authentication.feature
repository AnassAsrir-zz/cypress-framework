Feature: form authentication
  I want to test authentication form
  
  Scenario: login using correct credentials
    Given user opens authentication form
    When user enters "tomsmith" as "username"
    And user enters "SuperSecretPassword!" as "password"
    And user clicks login button
    Then successful login message is displayed

  Scenario Outline: login using wrong credentials
    Given user opens authentication form
    When user enters "<username>" as "username"
    And user enters "<password>" as "password"
    And user clicks login button
    Then failure login message is displayed: "<message>"
      Examples:
        | username | password             | message             |
        | smithtom | SuperSecretPassword  | username is invalid |
        | tomsmith | SuperSecretPassword  | password is invalid |
