# Backlog for the restaurant tablet

## Epic E1 — Control incoming work

### Feature E1.1 — Receive and decide orders

#### US-01 — Review and decide a new order

**Story:** As Sam, I want to review and decide a new order so that feasible work enters the kitchen without being missed.

**Acceptance criteria**

- Given a customer submits an order, when the order reaches the service, then the tablet notifies staff within the NFR-01 threshold.
- Given a pending order, when Sam opens it, then its items, modifiers, promised time, and customer notes are available.
- Given a pending order, when Sam accepts it, then the order is recorded as accepted.
- Given a pending order, when Sam rejects it with a reason, then the order is recorded as rejected with that reason.

**Coverage:** FR-01–FR-04, NFR-01, NFR-02, NFR-07, NFR-08

### Feature E1.2 — Regulate capacity

#### US-02 — Pause and resume new orders

**Story:** As Sam, I want to pause and resume new orders so that commitments remain within the small team's capacity.

**Acceptance criteria**

- Given the restaurant is receiving orders, when Sam pauses intake, then no new orders are offered to the restaurant.
- Given intake is paused, when Sam resumes it, then new orders can be offered again.
- Given Wi-Fi is unavailable, when Sam changes intake state, then the confirmed state is retained locally for the NFR-03 outage duration.
- Given queued intake changes, when connectivity returns, then they synchronize once within the NFR-04 threshold.

**Coverage:** FR-05, FR-06, NFR-03, NFR-04

## Epic E2 — Keep fulfilment information current

### Feature E2.1 — Menu availability

#### US-03 — Control a sold-out item's availability

**Story:** As Sam, I want to make a sold-out item unavailable and schedule its restoration so that customers only order items the restaurant can prepare.

**Acceptance criteria**

- Given an available item has sold out, when Sam marks it unavailable, then the unavailable state is recorded.
- Given an item is unavailable, when a customer attempts a new order, then that item cannot be ordered.
- Given Sam supplies a restoration time, when that time is reached, then the item becomes available.
- Given an availability change is made offline, when connectivity returns, then it synchronizes once within the NFR-04 threshold.

**Coverage:** FR-07–FR-10, NFR-03, NFR-04

### Feature E2.2 — Kitchen progress

#### US-04 — Maintain preparation progress

**Story:** As Sam, I want to update preparation state and promised time so that staff and riders work from current information.

**Acceptance criteria**

- Given an accepted order, when staff records preparation start, then its state becomes preparing.
- Given a preparing order, when staff records completion, then its state becomes ready.
- Given an active order, when staff reviews it, then its current state and promised ready time are available.
- Given the kitchen is delayed, when staff supplies a revised promised time, then the revised time is recorded within the NFR-02 threshold.

**Coverage:** FR-11–FR-15, NFR-02, NFR-03, NFR-04

## Epic E3 — Coordinate rider collection

### Feature E3.1 — Rider readiness

#### US-05 — Coordinate the rider's arrival

**Story:** As Sam, I want the rider's expected arrival and ready notification coordinated so that waiting at the counter is reduced.

**Acceptance criteria**

- Given an active order has an assigned rider, when Sam reviews the order, then the rider's estimated arrival time is available.
- Given an order becomes ready, when staff records the ready state, then the assigned rider is notified.

**Coverage:** FR-16, FR-17

### Feature E3.2 — Verified handover

#### US-06 — Verify and record collection

**Story:** As Sam, I want to verify the order number and record collection so that the correct bag goes to the rider.

**Acceptance criteria**

- Given a rider requests an order, when Sam opens the active order, then its verification number is available.
- Given the rider's number matches the order number, when Sam confirms handover, then the handover time is recorded.
- Given a handover is confirmed offline, when connectivity returns, then it synchronizes once within the NFR-04 threshold.

**Coverage:** FR-18, FR-19, NFR-03, NFR-04

## Epic E4 — Resolve order problems

### Feature E4.1 — Unavailable-item resolution

#### US-07 — Request a substitution

**Story:** As Sam, I want to contact a customer about an unavailable item and request a substitution so that the order can continue when the customer agrees.

**Acceptance criteria**

- Given an active order, when authenticated Sam opens issue handling, then the customer's contact information is available and access is audited.
- Given an unavailable item, when Sam records the issue, then it is associated with the active order.
- Given a recorded unavailable-item issue, when Sam initiates a substitution request, then the request is sent to the customer.
- Given the order closes, when the NFR-11 retention threshold passes, then restaurant access to its customer contact information is removed.

**Coverage:** FR-20–FR-22, NFR-06, NFR-11

### Feature E4.2 — Cancellation and refund

#### US-08 — Cancel and refund an unfulfillable order

**Story:** As Sam, I want to cancel an unfulfillable prepaid order and initiate its refund so that the customer is not charged for food the restaurant cannot provide.

**Acceptance criteria**

- Given an active order cannot be fulfilled, when Sam authorises cancellation, then the order becomes cancelled.
- Given a prepaid order becomes cancelled, when cancellation is recorded, then a full refund is initiated through the payment provider.
- Given the refund is processed, when storage and logs are inspected, then they contain zero card account numbers or verification values.

**Coverage:** FR-23, FR-24, NFR-05

## Epic E5 — Operate on supported tablets

### Feature E5.1 — Supported-device workflow

#### US-09 — Complete critical work on supported tablets

**Story:** As a restaurant operations lead, I want critical workflows verified on supported tablets so that managers can use the release on deployed hardware.

**Acceptance criteria**

- Given a device appears in the agreed support matrix, when the critical workflow suite runs, then completion meets the agreed NFR-10 threshold without clipping or blocking defects.
- Given a device does not appear in the support matrix, when deployment is requested, then the device is reported as unsupported.

**Coverage:** NFR-10

## Uncovered requirements

- **NFR-09 Maintainability** is an engineering release gate rather than a manager-visible vertical slice; it should be enforced in the team's Definition of Done and CI policy.
- **NFR-12 GDPR data-subject requests** is an organisation-wide privacy workflow outside the restaurant-tablet scope; create a separate privacy-service backlog item with the data protection owner.

No functional requirement is uncovered. No story points were assigned.
