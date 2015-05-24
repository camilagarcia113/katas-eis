Feature: Shoot

  Background:
    Given a board with dimensions "5" x "5"
    And a small ship in position: “3:3”
    And a large ship in position: “2:2”


  Scenario: Shoot and hit small ship
    Given I shoot to position “3:3”
    Then I get hit

  Scenario: Shoot and damage large ship
    Given I shoot to position “2:2”
    Then I get damaged

    @wip
  Scenario: Shoot and hit large ship
    Given I shoot to position “2:2”
    Then I get hit