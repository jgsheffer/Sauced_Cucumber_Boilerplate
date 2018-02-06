@test1
Feature: Amazon create account page should have verification on all  the fields

  Scenario:Error validation name
    Given I am on the site homepage
    When I click on sign_in_link on the Home Page
    And I click on register on the Sign In Page
    And I enter "glyptic.test@gmail.com" into the email field on the Create Account Page
    And I enter "Tropical1" into the password field on the Create Account Page
    And I enter "Tropical1" into the confirm_password field on the Create Account Page
    And I click on submit on the Create Account Page
    Then the "missing_name_error" on the Create Account Page should be visible and say "Enter your name"
