Feature: Shoes store at Manheim

Scenario: Searching for shoes by brand
    Given I am on the shoe store site
    Then I enter shoe brand "Acorn"
    When I click search to display the shoes
    Then I should see 1 shoe

Scenario: Showing all shoes
    Given I view all shoes
    Then I should see 9 shoes

Scenario Outline: Showing shoes by month
    Given A shoe for month: <month>
    Then I should see 1 shoe for month: <month>
  
  Examples:
    | month     |
    | January   |
    | February  |
    | March     |
    | April     |
    | May       |
    | June      |
    | July      |
    | August    |
    | September |
    | October   |
    | November  |
    | December  |
    
Scenario: Submiting the invalid promotion code
    Given I enter the invalide promotion code "10000"
    When I hit on Submit button
    Then I should see error message "The code: 10000 is not a valid promotional code"