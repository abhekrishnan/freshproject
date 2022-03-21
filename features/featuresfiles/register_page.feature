Feature: Verify the functionality of registration page

  @user_details
  Scenario: User able to register in the register page
    Given I land on jpetstore home page
    And I click on the link enter the store
    When I enter the signup page
    And I click the reqister now button
    And I enter the user details
    Then I verify i landed on the catalog page

  @user_details
  Scenario Outline: user able to check for valid register users
    Given I land on jpetstore home page
    And I click on the link enter the store
    When I enter the signup page
    And I click the reqister now button
    And I enter the user details for user <firstname>
    Then I verify i landed on the catalog page
    Examples:
      |firstname|
      |Abirami  |
      |Surendra |
      |Adhava   |
      |Adhira   |