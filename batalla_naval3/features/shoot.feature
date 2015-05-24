Feature: Shoot

  Background:
    Given a board with dimensions "5" x "5"
    And a small ship in position: “3:3”
    And a large ship in position: “2:2”

    @wip
  Scenario: Shoot and hit small ship
    Given I shoot to position “3:3”
    Then I get hit