Feature: Restaurants
  Frist viewing the screen there are no restaurants
  You can add a restaurant
  You can see all added resturants listed

  Scenario: No restaurants added should prompt me to add a restaurant
    Given I am on the "restaurants" page
    Then I should see "No restaurants yet"
    And the link "Add a new restaurant"