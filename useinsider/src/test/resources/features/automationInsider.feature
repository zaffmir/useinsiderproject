Feature: Automation Insider
  Background:
    Given I open browser
    And I enter fullscreen
    When I open home page


    @web @automationInsider @testisFailed
      Scenario: HomePageController
      When I see home page
      And I see use homepage element
      And I see company button element
      Then I click company button
      And I see careers button element
      Then I click careers button
      When I see careers page
      And I see careers header element
      And I scroll down from 50 percent side on the screen for 2 times
      And I see locations element
      And I scroll up from 50 percent side on the screen for 1 times
      And I see teams element
      And I scroll down from 50 percent side on the screen for 2 times
      And I see life insider blocks element

