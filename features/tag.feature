Feature: Use tags to classify pictures
  In order to find pictures
  As someone who is looking for a nice picture
  I want to be able to search for pictures by tag words

  Scenario: Add tag to picture
     Given I have added a picture
     When I add a tag to a picture
     Then I should see the tag