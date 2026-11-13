## 📝 Feature Overview
<!-- Summarize the goal of this PR and what specific user story it solves. -->
- **Target User Story:** `docs/planning/stories/story_XX.md`
- **Architect Spec Reference:** `docs/planning/architecture_spec.md`

## 🤖 1. CouncilGate SDLC Gatekeeper Checklist
*Before pinging human reviewers, you must execute your local Phase 3 audit loop.*

1. Run `git agency-review` in your local terminal.
2. Feed the output payload to your AI panel using `/review`.
3. Run `git copy-verdict` in your terminal to copy the Gatekeeper signature to your clipboard.
4. Paste your copied signature block below:

<!-- PASTE OUTPUT OF 'git copy-verdict' BELOW THIS LINE -->
- [ ] **AI Gatekeeper Status:** (`persona approved` / `issue found`)
- [ ] **Safe to Merge Signature:** (`YES` / `NO` / `CONDITIONAL`)
- [ ] **Audit File Reference:** `docs/reviews/review_YYYYMMDD_HHMMSS.md`

> ⚠️ **Note:** If the Gatekeeper marked the changes as `issue found` or `SAFE TO MERGE: NO`, address all required remediations before requesting human peer review.

---

## 👥 2. Human Peer Review Audit Matrix
*To be filled out and verified by human engineering teammates during peer review.*

### 🎨 User Experience & Design Polish
- [ ] **Visual Defenses:** Layout, margins, responsive breakpoints, and animations match modern design guidelines. No UI text truncates awkwardly.
- [ ] **Accessibility (a11y):** Interactive items contain explicit ARIA labels, focus states work cleanly via keyboard tabs, and semantic HTML components are utilized.

### 📐 Structural Architecture & System Safety
- [ ] **Readability & Intent:** Variable names represent context clearly. Complex algorithms contain short engineering comments explaining *why* they exist, not just *what* they do.
- [ ] **Performance Traps:** Loop limits are bounded. Network fetches avoid re-fetching identical static data unnecessarily.

### 🗄️ Database Engineering & Migrations (If Applicable)
- [ ] **Migration & Query Safety:** Schema changes include reversible rollback scripts, foreign keys and lookup columns are indexed, multi-write actions use transactions, and no N+1 query loops exist.

### 🧪 Quality Assurance & Engineering Edge Cases
- [ ] **Error Path Hygiene:** System catches API failures gracefully, presenting clean error alerts to users instead of crashing or spinning endlessly.
- [ ] **Boundary Conditions:** Inputs accept and restrict extreme sizes (e.g., negative numbers, empty arrays, character caps) safely.

---

## 🏁 Sign-Off Signature
- **Human Peer Reviewer 1:** @username (`Approved` / `Changes Requested`)
- **Human Peer Reviewer 2:** @username (`Approved` / `Changes Requested`)
- **Final Consensus Verdict:** [ READY FOR PRODUCTION / REJECTED ]
