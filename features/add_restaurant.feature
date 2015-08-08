Feature: Restaurants
  Frist viewing the screen there are no restaurants
  You can add a restaurant
  You can see all added resturants listed

  Scenario: No restaurants added should prompt me to add a restaurant
    Given I am on the "restaurants" page
    Then I should see "No restaurants yet"
    And the link "Add a new restaurant"

  Scenario: Adding a restuarant with no review
    Given I am on the "restaurants" page
    When I enter in a new restaurant "Bubba Gump Shrimp"
    And press "Submit"
    Then I should see "Bubba Gump Shrimp"

  Scenario: Adding a restaurant with a review.
    Given I am on the "restaurants" page
    When I enter in a new restaurant "Bubba Gump Shrimp"
    And with a review of "3"
    And press "Submit"
    Then I should see "Bubba Gump Shrimp"
    And with a rating of "3"

  Scenario: Adding a review to a restaurant.
    Given I am on the "restaurants" page
    When I enter in a new restaurant "Bubba Gump Shrimp"
    And with a review of "3"
    And click on link "Bubba Gump Shrimp"
    Then I can enter a review of "very good food"
    And press "Submit"
    And see my review "very good food"
