# Part C source material

## User stories for Sam

- **US-S1:** As Sam, I want new feasible orders to be hard to miss so that I can respond while also serving counter customers.
- **US-S2:** As Sam, I want to control incoming order volume so that the small team is not committed beyond its capacity.
- **US-S3:** As Sam, I want to change menu availability quickly so that customers do not order sold-out items.
- **US-S4:** As Sam, I want the current preparation state and promised ready time recorded so that staff and riders receive consistent information.
- **US-S5:** As Sam, I want to verify and record rider handover so that each bag goes to the correct rider.
- **US-S6:** As Sam, I want customer and resolution information together so that unavailable-item problems can be resolved promptly.

## Prototype walkthrough notes

- **W1 — Sam:** Sam noticed a persistent visual new-order indicator while packing, then accepted the order after reviewing items, modifiers, promised time, and customer notes. He asked for a distinct rejection action with a recorded reason. He could not state a maximum acknowledgement time; this remains `[TBC]`.
- **W2 — Mai:** Mai paused new orders during a simulated rush and later resumed them. She expected existing accepted orders to remain active. She wanted sold-out items blocked immediately and asked to choose either a restoration time or manual restoration.
- **W3 — Linh:** Linh moved an order from accepted to preparing to ready. She changed its promised ready time when the kitchen fell behind. During a simulated Wi-Fi loss she expected changes to remain visible locally and synchronize later, but gave no acceptable synchronization time.
- **W4 — Huy:** Huy matched the tablet order number to a rider's order number, marked the handover complete, then handled a sold-out item by viewing contact details and sending a substitution request. If declined, he wanted to cancel the order and initiate a full refund. The walkthrough did not establish a customer-response timeout.
