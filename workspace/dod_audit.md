# Definition of Done audit — SF-06

| Item | Status | Evidence |
|---|---|---|
| D1 — All acceptance criteria pass | ❌ not met | CI reports `13 scenarios (12 passed, 1 failed)` and `FAILED: Code still valid on its valid-until date`. The description's claim is not evidence. |
| D2 — Reviewed by at least one other team member | ❌ not met | The PR states `**Reviewers:** none requested`. `Self-reviewed, and reviewed by Copilot` is not approval from another team member. |
| D3 — Linter and type checker pass | ❌ not met | CI reports `ruff check src tests ........................... passed`, but `mypy src ....................................... SKIPPED (job disabled in ci.yml)`. |
| D4 — Integration tests pass | ✅ met | CI reports `[integration]  pytest tests/integration ....................... 4 passed`. |
| D5 — Money is integer VND, no floating point | ❌ not met | The diff contains `raw = cart.food_subtotal * promo.value / 100`; Python `/` produces floating-point arithmetic. |
| D6 — Deployed to staging and manually tested | ❌ not met | CI reports `[deploy]       staging ........................................ not run (manual trigger)`; the PR also says `Will deploy to staging after merge`, with no staging link or test note. |

**Verdict:** SF-06 is not Done. Only D4 has the required evidence.

| Priority | Next step | DoD item closed |
|---:|---|---|
| 1 | Fix the inclusive-expiry defect and replace floating-point discount arithmetic, then rerun acceptance tests. | D1 — All acceptance criteria pass; D5 — Money is integer VND, no floating point |
| 2 | Re-enable mypy, obtain a passing run, and request approval from a non-author team member. | D3 — Linter and type checker pass; D2 — Reviewed by at least one other team member |
| 3 | Deploy the passing build to staging and attach the staging link plus manual-test note. | D6 — Deployed to staging and manually tested |
