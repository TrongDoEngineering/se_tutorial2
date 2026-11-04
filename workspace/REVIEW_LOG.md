# Tutorial review and iteration log

## Part A — Interview guide

- **Round-one finding:** Q1 assumed the manager was "juggling" and Q4 assumed frustration.
- **Iteration:** Replaced both with neutral questions that permit positive or negative accounts; also made the wrap-up open-ended.
- **Result:** Nine open questions, two probes each, required section order, and a time-cut note.

## Part B — Personas

- **Round-one check:** Traced every persona bullet to I1–I8 or O1–O2 and removed claims that could not be tied to a note.
- **Iteration:** Kept context relevant to behaviour, separated the personas by operational constraint, and selected Sam for later parts.
- **Result:** Three distinct personas with three tagged bullets in every required section.

## Part C — Functional requirements

- **Round-one check:** Checked every requirement for the “The system shall” form, a single system behaviour, a valid source, and absence of invented values.
- **Iteration:** Split intake pause/resume, preparation state changes, and cancellation/refund into separate requirements; collected unresolved values as stakeholder questions.
- **Result:** FR-01–FR-24 across all five required categories.

## Part D — Non-functional requirements

- **Round-one check:** Verified that each NFR has a measurable quantity, threshold, condition, test method, and links only to existing FRs.
- **Iteration:** Replaced unevidenced numeric thresholds with `[TBC]` and a stakeholder question.
- **Result:** NFR-01–NFR-12 cover all eight required categories.

## Part E — Backlog

- **Round-one check:** Checked each story for a visible vertical outcome, two to four Given/When/Then criteria, requirement coverage, and absence of story points.
- **Iteration:** Added offline behaviour, privacy, payment-data, and supported-device coverage. Kept NFR-09 and NFR-12 explicitly uncovered because they require engineering-policy and privacy-service work outside a manager-visible tablet story.
- **Result:** Every FR is covered; every in-scope user-facing NFR is covered or transparently listed as uncovered.

## Part F — Prioritisation

- **Round-one review:** Recalculated 29 Must, 10 Should, and 11 Could points, totalling 50.
- **Iteration:** Used stakeholder notes to move SF-06 to Must and SF-10 to Should; SF-13 remained Must with evidence replacing the original assumption.
- **Result:** Round two totals 32/10/8 and remains at 50 points.

## Part G — Scope changes

- **Review:** CR-01 adds two planned points and SF-09 removes two; CR-02 is Won't and adds no effort.
- **Result:** The plan remains at 50 points with no scope creep.

## Part H — Acceptance criteria

- **Round-one review:** Found an invented minimum, missing cap and delivery-fee coverage, an untested inclusive-validity boundary, and invented error wording.
- **Iteration:** Rewrote exactly one boundary scenario for each of R1–R3.
- **Result:** Three scenarios, one tag per scenario, correct integer VND totals, and no contradictory rule.

## Part I — Definition of Done

- **Review:** Checked each status against CI, reviewer metadata, the diff, or staging evidence rather than author claims.
- **Result:** Only D4 is met; SF-06 is not Done, with three risk-ordered next steps.
