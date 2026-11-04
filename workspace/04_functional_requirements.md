# Functional requirements — restaurant tablet

## Order intake

| ID | Requirement | Actor | Source |
|---|---|---|---|
| FR-01 | The system shall notify restaurant staff of each new order upon receipt. | Restaurant staff | US-S1, W1 |
| FR-02 | The system shall present the items, modifiers, promised time, and customer notes for a selected order. | Restaurant staff | US-S1, W1 |
| FR-03 | The system shall record acceptance of a pending order when authorised by restaurant staff. | Sam | W1 |
| FR-04 | The system shall record rejection of a pending order with a selected reason. | Sam | W1 |
| FR-05 | The system shall pause receipt of new orders when authorised by Sam. | Sam | US-S2, W2 |
| FR-06 | The system shall resume receipt of new orders when authorised by Sam. | Sam | US-S2, W2 |

## Menu availability

| ID | Requirement | Actor | Source |
|---|---|---|---|
| FR-07 | The system shall record a menu item as unavailable when selected by Sam. | Sam | US-S3, W2 |
| FR-08 | The system shall prevent new orders for a menu item while that item is unavailable. | Customer | US-S3, W2 |
| FR-09 | The system shall record a restoration time for an unavailable menu item when supplied by Sam. | Sam | W2 |
| FR-10 | The system shall restore an unavailable menu item when its recorded restoration time is reached. | System | W2 |

## Kitchen progress

| ID | Requirement | Actor | Source |
|---|---|---|---|
| FR-11 | The system shall present the current preparation state for each active order. | Restaurant staff | US-S4, W3 |
| FR-12 | The system shall record an accepted order as preparing when selected by restaurant staff. | Restaurant staff | US-S4, W3 |
| FR-13 | The system shall record a preparing order as ready when selected by restaurant staff. | Restaurant staff | US-S4, W3 |
| FR-14 | The system shall present the promised ready time for each active order. | Restaurant staff | US-S4, W1, W3 |
| FR-15 | The system shall record a revised promised ready time when supplied by restaurant staff. | Restaurant staff | US-S4, W3 |

## Rider handover

| ID | Requirement | Actor | Source |
|---|---|---|---|
| FR-16 | The system shall present the assigned rider's estimated arrival time for an active order. | Restaurant staff | US-S4, W3 |
| FR-17 | The system shall notify the assigned rider when an order is recorded as ready. | Rider | W3 |
| FR-18 | The system shall present the order number used to verify a rider handover. | Sam | US-S5, W4 |
| FR-19 | The system shall record the time of a verified rider handover. | Sam | US-S5, W4 |

## Issue handling

| ID | Requirement | Actor | Source |
|---|---|---|---|
| FR-20 | The system shall present customer contact information for an active order. | Sam | US-S6, W4 |
| FR-21 | The system shall record an unavailable-item issue against an active order. | Sam | US-S6, W4 |
| FR-22 | The system shall send a substitution request to the customer when initiated by Sam. | Customer | US-S6, W4 |
| FR-23 | The system shall cancel an active order when authorised by Sam. | Sam | US-S6, W4 |
| FR-24 | The system shall initiate a full refund through the payment provider for a cancelled prepaid order. | Payment provider | US-S6, W4 |

## Stakeholder questions for unresolved values

- What is the maximum acceptable time for acknowledging a new order?
- How quickly must locally recorded changes synchronize after connectivity returns?
- How long should the restaurant wait for a response to a substitution request?
- Should an item without a restoration time remain unavailable until manually restored?
