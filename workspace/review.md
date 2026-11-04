# Review of `discount.feature`

| Finding | Rule | Evidence |
|---|---|---|
| The assumed 150,000 VND minimum contradicts the actual threshold, and the required rejection code is absent. | R1 — Minimum order: food subtotal must be at least 100,000 VND; otherwise `MIN_ORDER_NOT_MET`. | `Scenario: Order at the assumed minimum qualifies` uses 150,000 VND, while the rule sets 100,000 VND and requires testing the rejection boundary. |
| The percentage-discount cap and delivery-fee treatment are not tested. | R2 — Cap: 20% never exceeds 30,000 VND and reduces food only, never the delivery fee. | The only percentage example asserts `the discount is 20,000 VND`; no scenario reaches the 30,000 VND cap, and no delivery fee is stated. |
| Validity is tested only after expiry, not on the inclusive last valid day, and the error wording is invented. | R3 — Validity: the code is valid through its valid-until date; afterward the result is `EXPIRED`. | `Given the code "OLD10" expired on 2026-11-03` does not test the valid-until date, and `Promo code expired` is not the specified `EXPIRED` result. |
