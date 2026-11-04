# assumption: SAVE10 gives 10% off orders of at least 150,000 VND, expires after 2026-11-30, and cannot be combined with another code.
Feature: Apply a promo code at checkout
  As a customer, I want to apply a promo code at checkout so that I pay less.

  Background:
    Given today is 2026-11-04
    And I am checking out

  @happy
  Scenario: Valid code reduces the total
    Given my order subtotal is 200,000 VND
    When I apply the code "SAVE10"
    Then the discount is 20,000 VND
    And the total is 180,000 VND

  @error
  Scenario: Expired code is rejected
    Given my order subtotal is 200,000 VND
    And the code "OLD10" expired on 2026-11-03
    When I apply the code "OLD10"
    Then I see "Promo code expired"

  @edge
  Scenario: Order at the assumed minimum qualifies
    Given my order subtotal is 150,000 VND
    When I apply the code "SAVE10"
    Then the discount is 15,000 VND
    And the total is 135,000 VND
