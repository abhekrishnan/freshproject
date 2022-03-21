Feature: Verify the functionality of login page with user details

  Scenario: User able to login with the user details
    Given I land on jpetstore home page
    And I click on the link enter the store
    When I enter the signup page
    And The user able to login in with the details sunday_42 and monday
    Then I verify I landed on the welcome page

  Scenario Outline: User able to login with the multi user details
    Given I land on jpetstore home page
    And  I click on the link enter the store
    When I enter the signup page
    And The user able to login in with the details <user_id> and <pass_word>
    Then I verify I landed on the welcome page for <firstname>
    Examples:
      | user_id    | pass_word | firstname |
      | sunday_865 | monday    | Abirami   |
      | sunday_838 | monday    | Surendra  |
      | sunday_91  | monday    | Adhava    |
      | sunday_339 | monday    | Adhira    |