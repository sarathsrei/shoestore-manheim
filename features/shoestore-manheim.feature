Feature: Shoes store at Manheim

  Background: I am on the shoe store site

Scenario: Searching for shoes by brand
    Then I enter shoe brand "Acorn"
    When I click search to display the shoes
    Then I should see 1 shoe

Scenario: Showing all shoes
    When I view all shoes
    Then I should see all shoes

  Scenario Outline: Display Shoes for Each Month
    Given I click on "<Month>"
    Then I should see shoes displayed on the page
    And I should see a suggested price for each shoe
    And I should see a small blurb for each shoe
    And I should see an image for each shoe

    Examples:
      | Month |
      | January |
      | February |
      | March |
      | April |
      | May |
      | June |
      | July |
      | August |
      | September |
      | October |
      | November |
      | December |

  Scenario Outline: Subscribe to Receive New Releases by Month
    Given I am on the Shoe Store landing page
    Then a text field for email should be present
    When I enter my "<Email>" into the form field
    And I click button to submit email
    And I should see confirmation message

    Examples:
      | Email |
      | sarath@email.com |
      | john@email.com |
      | jason@email.com |
