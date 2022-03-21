Feature: Verify jpetstore page

Scenario: Verify user able to launch the pet store home page
  Given I land on jpetstore home page
  Then I verify the link is available to enter the store
  And I click on the link enter the store
  And I verify i landed on the catalog page


Scenario: User able to search for pet animals
  Given I land on jpetstore home page
  And I click on the link enter the store
  When I click reptiles link



