Feature: Drag and drop items


  @javascript
  Scenario:Drag and drop
    Given I have a list "to dos" with the following items:
      |name                | position   |
      | Buy Milk           | 1          |
      | Wash Car           | 2          |
      | Test drag and drop | 3          | 
    When I go to the lists page
    And I follow "Show"
    And I drag item "Test drag and drop" to the top of the list
    Then the list "to dos" should have the following items:  
      | name               | position   |
      | Test drag and drop | 1          | 
      | Buy Milk           | 2          |
      | Wash Car           | 3          |



