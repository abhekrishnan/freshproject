Feature: Verify jpetstore page

Scenario: Verify user able to launch the pet store home page
  Given user able to login to the home page
  Then I verify the link is available to enter the store
  And I click on the link enter the store
  And I verify i landed on the catalog page


Scenario: User able to search for pet animals
  Given user able to login to the home page
  And I click on the link enter the store
  When I click reptiles link

Scenario: User able to register in the register page
  Given user able to login to the home page
  And I click on the link enter the store
  When I enter the signup page
  And I click the reqister now button
  And I enter the user details
  Then I verify i landed on the catalog page

Scenario: User able to login with the user details
  Given user able to login to the home page
  And I click on the link enter the store
  When I enter the signup page
  And The user able to login in with the details sunday_42 and monday
  Then I verify I landed on the welcome page

Scenario Outline: user able to check for valid register users
  Given user able to login to the home page
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

Scenario Outline: User able to login with the multi user details
  Given user able to login to the home page
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