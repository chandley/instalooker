Feature: Basic Navigation
    In order to enjoy looking at pictures
    As a not-signed in user
    I should see a welcome page and be invited to sign up 

    Scenario: Welcome to instapic
    Given I am on the homepage as an anonymous visitor
    Then I should be invited to sign up or sign in

    Scenario: Decide to sign up
    Given I am on the homepage as an anonymous visitor
    When I click 'sign up'
    Then I should be invited to enter an email and password

    Scenario: Sign up
    Given I am on the homepage as an anonymous visitor
    When I sign up 
    Then I should be greeted by name

    Scenario: Sign in
    iven I am on the homepage as an anonymous visitor
    When I sign in as an existing user
    Then I should be greeted by name

    Scenario: Sign in with bad details
    Given I am on the homepage as an anonymous visitor
    When I sign in as a new user
    Then I should not be signed in
