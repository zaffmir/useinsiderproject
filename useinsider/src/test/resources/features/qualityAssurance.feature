
Feature: Quality Assurance
  Background:
    Given I open browser
    And I enter fullscreen
    When I open quality assurance page


  @web @qualityAssurance @testisFailed
  Scenario: QualityAssurance
    When I see quality assurance page
    And I see use quality assurance element
    And I see see all qa jobs element
    Then I click see all qa jobs
    When I see open position page
    And I see open positions header element
    And I see filter by location element
    Then I click filter by location
    Then I fill:
    | filter by location | İstanbul, Türkiye |
    Then I click filter by department
    Then I fill:
    | filter by department | Kalite Güvencesi |
    And I scroll down from 50 percent side on the screen for 1 times
    And I see view role element
    Then I click view role
    When I see apply job page
    And I see apply job header element


