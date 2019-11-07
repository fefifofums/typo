Feature: Add/Edit Blog Categories
  As a blog administrator
  In order to group my blogs properly
  I want to add or edit the categories of a blog
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Successfully navigate to the admin categories page
    Then I should see "Categories"
    When I follow "Categories"
    Then I should be on the categories page

  Scenario: Add categories to my blog
    Given I am on the admin categories page
    When I fill in "category_name" with "name"
    And I fill in "category_keywords" with "keyword"
    And I fill in "category_permalink" with "link"
    And I fill in "category_description" with "description"
    And I press "Save"
    Then I should see "Category was successfully saved."
    And I should see "name"
    And I should see "keyword"
    And I should see "link"
    And I should see "description"
    
  Scenario: Edit the categories of my blog
   Given I am on the admin categories page
    When I fill in "category_name" with "name"
    And I fill in "category_keywords" with "keyword"
    And I fill in "category_permalink" with "link"
    And I fill in "category_description" with "description"
    And I press "Save"
    Then I should see "Category was successfully saved."
    And I should see "name"
    And I should see "keyword"
    And I should see "link"
    And I should see "description"
    Then I follow "name"
    And I fill in "category_keywords" with "newkeyword"
    And I press "Save"
    Then I should see "Category was successfully saved."
    And I should see "newkeyword"
