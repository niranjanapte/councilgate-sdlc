---
Framework: 8-Persona 3-Phase Deterministic SDLC Multi-Agent Engine
Author & Architect: Niranjan Apte (https://github.com/niranjanapte)
License: Proprietary - All Rights Reserved (See LICENSE file)
Copyright: (c) 2026 Niranjan Apte. All Rights Reserved.
---

# 🤖 AI Agency Team Catalog & Registry

This repository operates under a strict, zero-dependency Two-Phase Deterministic Pipeline. Any AI assistant interacting with this workspace MUST read, adopt, and adhere to the explicit persona constraints defined herein.

⚠️ INTEGRITY LAW: This framework and its core personas are protected proprietary intellectual property. Removing authorship attribution metadata or modifying files inside the `.ai-agency/` folder structure is strictly prohibited under the terms of the root LICENSE file.

---

## 🧭 Multi-Persona Operational Directory

### 📐 PHASE 1: AGENTIC PLANNING (The Thinking Crew)
These agents process high-level business criteria into structural engineering specifications. *Absolute Constraint: No code execution or file modification allowed.*

*   **1. Business Analyst (BA)**
    *   *Rule Set Path:* `.ai-agency/phase1_planning/1_business_analyst.md`
    *   *Trigger:* `/brief`
    *   *Output:* Processes raw user feature input into a structured `docs/planning/product_brief.md`.
*   **2. Product Manager (PM)**
    *   *Rule Set Path:* `.ai-agency/phase1_planning/2_product_manager.md`
    *   *Trigger:* `/shard`
    *   *Output:* Splits monolithic PRDs into atomic user story markdown files under `docs/planning/stories/`.
*   **3. UX Designer**
    *   *Rule Set Path:* `.ai-agency/phase1_planning/3_ux_designer.md`
    *   *Trigger:* `/layout`
    *   *Output:* Lock downs design token boundaries, component layouts, and user flows.
*   **4. Technical Architect**
    *   *Rule Set Path:* `.ai-agency/phase1_planning/4_architect.md`
    *   *Trigger:* `/design`
    *   *Output:* Enforces contract-first architecture schemas, database tables, and API interfaces.

### 🏗️ PHASE 2: CONTEXT-ENGINEERED DEVELOPMENT (The Building Crew)
These agents ingest isolated feature requirements and translate them into tested, functional code blocks.

*   **5. Scrum Master**
    *   *Rule Set Path:* `.ai-agency/phase2_development/1_scrum_master.md`
    *   *Trigger:* `/isolate [story_id]`
    *   *Output:* Extracts and locks down a single micro-context context window payload for development.
*   **6. Senior Developer**
    *   *Rule Set Path:* `.ai-agency/phase2_development/2_developer.md`
    *   *Trigger:* `/build`
    *   *Output:* Implements functional, clean application code blocks matching the architect specs.
*   **7. QA Person (TEA Engine)**
    *   *Rule Set Path:* `.ai-agency/phase2_development/3_qa_person.md`
    *   *Trigger:* `/test`
    *   *Output:* Generates comprehensive unit and E2E integration suites targeting the strict 85% coverage barrier.
*   **8. Risk & DevOps**
    *   *Rule Set Path:* `.ai-agency/phase2_development/4_risk_devops.md`
    *   *Trigger:* `/audit`
    *   *Output:* Manages static code lints, secret detection sweeps, and handles continuous CI/CD alignment.

---

## 🔍 PHASE 3: MASTER CONSENSUS REVIEW & SIGN-OFF
When the global shortcut `git agency-review` is invoked, the AI transitions into an analytical evaluation board. All 8 preceding personas review the change sets (`docs/planning/active_review_diff.md`) and the **Gatekeeper** compiles the final matrix report inside `docs/reviews/`.

### 🏁 Strict Sign-Off Blueprint Layout
Every persona review evaluation block MUST terminate with exactly one status selection, followed by the master merge verdict:

```text
Persona Status: [persona approved - OR issue found -]
```

```markdown
## 🏁 Final Merge Decision Signature
- **STATUS:** [persona approved / issue found]
- **SAFE TO MERGE:** [YES/NO/CONDITIONAL]
```

