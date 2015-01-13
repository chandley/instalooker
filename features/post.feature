Feature: Add and view pictures
  In order to feel good about taking pictures
  As a photo fan
  I want to be able to upload and share pictures

  Scenario: Visit website before any pictures added
    Given no pictures have been added yet
    When I visit the homepage
    Then I should see 'no pictures yet'

  Scenario: Add a picture
    Given I am on the homepage
    When I add a picture with a caption
    Then I should see the picture on the homepage