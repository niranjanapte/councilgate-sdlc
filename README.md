---
Framework: Framework: CouncilGate SDLC — Multi-Persona Deterministic SDLC & Automated PR Gatekeeper
Author & Architect: Niranjan Apte (https://github.com/niranjanapte)
License: Proprietary - All Rights Reserved (See LICENSE file)
Copyright: (c) 2026 Niranjan Apte. All Rights Reserved.
---

# 📖 Multi-Persona SDLC Framework: Operational Playbook
*Version: 8.0-Enterprise (IDE-Agnostic / Zero-Dependency)*

Welcome to the production-grade, multi-agent development ecosystem designed to turn modern AI assistants (Cursor, Windsurf, VS Code + Roo Code/Cline, GitHub Copilot) from single-prompt helpers into an aligned, automated software engineering team.

---

## 🛡️ Integrated Infrastructure Self-Defense Layer
This framework contains an active, embedded **Self-Defense Verification Protocol** hardcoded directly into the global script engines (`bin/agency-review.sh`). 

*   **Immutable Authorship Enforcement:** The framework checks the repository environment on every execution hook.
*   **Tamper Protection:** If anyone attempts to remove `Copyright (c) 2026 Your Full Name` from the root `LICENSE` file, or strip authorship credit headers from the core orchestrator `.ai-agency/agency.md`, **all terminal execution scripts will instantly lock up and freeze with an Integrity Error code.**
*   **IP Protection:** Any public or enterprise users cloning this repository are legally bound to respect the copyright blocks. They are strictly prohibited from creating altered derivative versions of the core configurations or redistributing them without explicit written authorization.

---
## 📂 Project Topology & Manifest Directory

This repository functions as a zero-dependency full-stack monorepo. The core layout maps out your multi-agent infrastructure assets at the root level, alongside isolated frontend and backend application directories:

```text
your-project-root/
├── .cursorrules                   # Native Cursor orchestration startup boot directions
├── AGENTS.md                      # Prompt catalog directory mapping persona scopes
├── README.md                      # Human operating manual and execution rules handbook
├── jest.config.js                 # [AT ROOT] Enforces strict frontend 85% coverage walls
├── pytest.ini                     # [AT ROOT] Enforces strict backend 85% coverage walls
├── setup-git-alias.sh             # Universal macro installation provisioning runtime script
├── .ai-agency/                    # 🤖 THE DECENTRALIZED MULTI-AGENT PERSONA VAULT
│   ├── agency.md                  # Central platform orchestrator and phase mapping blueprint
│   ├── phase1_planning/           # Phase 1 Blueprints (1_business_analyst, 2_product_manager, etc.)
│   ├── phase2_development/        # Phase 2 Blueprints (1_scrum_master, 2_developer, 3_qa_person, etc.)
│   └── phase3_review/             # Phase 3 Cloud Verification Tools & Headless API Runners
├── .github/                       # 🛠️ GLOBAL REMOTE GUARDRAIL PIPELINES
│   ├── pull_request_template.md   # Structural markdown checklist auto-populating new PRs
│   └── workflows/
│       ├── ai-agency-ci.yml       # Engineering test execution and coverage verification gate
│       └── ai-agency-pr-review.yml# Automated cloud-based multi-persona review engine loop
├── bin/                           # 💻 LOCAL TERMINAL WORKSPACE UTILITIES
│   ├── agency-review.sh           # Active git diff collector and compliance validation check
│   └── copy-verdict.sh            # Automated verdict string extractor and clipboard tool
├── frontend/                      # Client-side web application source code module (Next.js)
└── backend/                       # Server-side API and database source code module (FastAPI)
```

---

## 🔀 Workspace Command Summary Cheat-Sheet

For quick onboarding, reference this execution table to move any new code contribution across the pipeline phases:

| Phase / Target | Operation Command / Tool | Intended Outcome |
| :--- | :--- | :--- |
| **Workspace Init** | `chmod +x setup-git-alias.sh && ./setup-git-alias.sh` | Hooks the global `git agency-review` and `git copy-verdict` tools onto your terminal profile. |
| **Phase 1: Planning** | `@.ai-agency/agency.md` ➔ `/brief` ➔ `/shard` | Creates `product_brief.md`, isolated user stories, and architectural layout parameters. |
| **Phase 2: Build** | `@.ai-agency/agency.md` ➔ `/isolate` ➔ `/build` | Restricts context down to one story, generates code blocks matching your contract schemas. |
| **Phase 3: Review** | `git agency-review` in terminal panel | Sweeps git diff changes, validates author signature compliance, outputs prompt macro block. |
| **Phase 3: Verify** | `@.ai-agency/agency.md` ➔ `/review` in editor panel | Triggers all 8 personas to vote, checks code coverage targets, writes your historical `docs/reviews/` log. |
| **Phase 3: Paste** | `git copy-verdict` in terminal panel | Automatically copies your merge safety verdict directly to your clipboard for your pull request submission. |

---

## 🏗️ Master Rules for Project Success
1. **Never Skip Phase 1 (Planning):** Allowing a developer agent to "vibe code" a features or modules without rigid database schemas, UI boundaries, and sharded user stories will instantly pollute your context window and collapse code stability.
2. **Keep Code Changes Atomic:** Build exactly **one isolated story file at a time** on a dedicated feature branch.
3. **Enforce Contract-First Coding:** Developers write functional code *only* satisfying the schemas and interface shapes established by the Architect.

---

## 📐 PHASE 1: AGENTIC PLANNING (The Thinking Crew)
*Objective: Build structural blueprints, layout contracts, and isolated story files. Absolute Rule: No application code generation allowed.*

### Step 1: Requirements Capture (Business Analyst)
*   **Prompt to AI Panel:**
    ```text
    @.ai-agency/agency.md @.ai-agency/phase1_planning/1_business_analyst.md
    Task: Read my raw feature idea: "[Insert your feature request here]". Run /brief to clean requirements, evaluate trade-offs, and output docs/planning/product_brief.md.
    ```

### Step 2: Story Sharding (Product Manager)
*   **Prompt to AI Panel:**
    ```text
    @.ai-agency/agency.md @.ai-agency/phase1_planning/2_product_manager.md @docs/planning/product_brief.md
    Task: Run /shard to split this product brief into isolated user story files inside docs/planning/stories/.
    ```

### Step 3: Layout Boundaries & Architecture Contracts (UX Designer & Architect)
*   **Prompt to AI Panel:**
    ```text
    @.ai-agency/agency.md @.ai-agency/phase1_planning/3_ux_designer.md @.ai-agency/phase1_planning/4_architect.md @docs/planning/
    Task: Review the active stories. UX Designer run /layout to define UI wireframe components. Architect run /design to generate explicit database schemas and TypeScript API interfaces inside docs/planning/architecture_spec.md.
    ```

---

## 🏗️ PHASE 2: CONTEXT-ENGINEERED DEVELOPMENT (The Building Crew)
*Objective: Translate planning blueprints into functional, fully tested code inside an isolated workspace context.*

### Step 1: Initialize an Atomic Feature Branch
```bash
git checkout -b feature/story-01
```

### Step 2: Work Context Isolation (Scrum Master)
*   **Prompt to AI Panel:**
    ```text
    @.ai-agency/agency.md @.ai-agency/phase2_development/1_scrum_master.md @docs/planning/
    Task: Run /isolate on story_[id].md. Extract and present the exact micro-context payload for the Developer agent.
    ```

### Step 3: Code Execution (Senior Developer)
*   **Prompt to AI Panel:**
    ```text
    @.ai-agency/agency.md @.ai-agency/phase2_development/2_developer.md
    Task: Run /build using the Scrum Master micro-context and contract schemas inside docs/planning/architecture_spec.md. Implement all logic without placeholders or incomplete code.
    ```

---

## 🔍 PHASE 3: MASTER CONSENSUS REVIEW & SIGN-OFF
*Objective: Run multi-persona code verification loops locally using your global Git alias before pushing up a PR.*

### Step 1: Execute Local Diff Sweep
Open your terminal profile workspace and run your global shortcut command:
```bash
git agency-review
```
*The script checks your project's integrity, gathers your local staged and unstaged changes (`git diff`), maps out an active registry payload, and exports it directly to `docs/planning/active_review_diff.md`.*

### Step 2: Trigger Committee Consensus Review
Copy the prompt snippet from your terminal screen and paste it into your AI panel:
```text
@.ai-agency/agency.md @docs/planning/active_review_diff.md /review
```
*The Code Review Router dispatches file structures to all 8 sub-persona review engines. The Gatekeeper computes the final pass/fail matrix and writes an immutable log to your workspace under `docs/reviews/review_[TIMESTAMP].md`.*

### Step 3: Copy Verdict to Clipboard
Once the review completes, capture the final signatures immediately for your Pull Request summary field:
```bash
git copy-verdict
```

The system will instantly copy your code safety signature block straight to your computer's clipboard:
```markdown
### 🤖 AI Gatekeeper Validation Signature
- **STATUS:** persona approved
- **SAFE TO MERGE:** YES
- **Audit File Reference:** `review_20261106_163000.md`
```
If **`SAFE TO MERGE: YES`** is signed off, you are fully authorized to push your clean feature branch and open your PR!

