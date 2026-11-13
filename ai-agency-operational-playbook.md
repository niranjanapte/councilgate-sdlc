---
Framework: CouncilGate SDLC — Multi-Persona Deterministic SDLC & Automated PR Gatekeeper
Author & Architect: Niranjan Apte (https://github.com/niranjanapte)
License: Proprietary - All Rights Reserved (See LICENSE file)
Copyright: (c) 2026 Niranjan Apte. All Rights Reserved.
---

# 📖 Multi-Persona SDLC Framework: Operational Playbook
*Version: 8.0-Enterprise (IDE-Agnostic / Zero-Dependency)*

This document serves as the core human-in-the-loop operating manual. It outlines exactly how to trigger, manage, and verify each phase of your zero-dependency AI engineering agency.

---

## 🛡️ Integrated Infrastructure Self-Defense Layer
This framework contains an active, embedded **Self-Defense Verification Protocol** hardcoded directly into the global script engines (`bin/agency-review.sh`). 

1. **Immutable Authorship Enforcement:** The framework checks the repository environment on every execution hook.
2. **Tamper Protection:** If anyone attempts to remove `Copyright (c) 2026 Your Full Name` from the root `LICENSE` file, or strip authorship credit headers from the core orchestrator `.ai-agency/agency.md`, **all terminal execution scripts will instantly lock up and freeze with an Integrity Error code.**
3. **IP Protection:** Any public or enterprise users cloning this repository are legally bound to respect these copyright blocks. They are strictly prohibited from creating altered derivative versions of the core configurations or redistributing them without explicit written authorization.

---

## 🏗️ Core Rules for Project Success
1. **Never Skip Phase 1:** Allowing a developer agent to "vibe code" an app or feature module without strict architectural schemas and isolated story files will instantly dilute your context window and degrade code stability.
2. **Keep Code Changes Atomic:** Only build **one isolated story file at a time** on a dedicated feature branch.
3. **Enforce Contract-First Coding:** Developers write functional code *only* satisfying the schemas established by the Architect.

---

## 📐 PHASE 1: AGENTIC PLANNING (The Thinking Crew)
*Objective: Build structural blueprints, layout contracts, and isolated story files. Absolute Rule: No application code generation allowed.*

### Step 1: Requirements Capture (Business Analyst)
Ingests messy user ideas and filters them through an analytical evaluation loop.
*   **Prompt to AI Panel:**
    ```text
    @.ai-agency/agency.md @.ai-agency/phase1_planning/1_business_analyst.md
    Task: Read my raw feature idea: "[Insert your feature request here]". Run /brief to clean requirements, evaluate trade-offs, and output docs/planning/product_brief.md.
    ```

### Step 2: Story Sharding (Product Manager)
Prevents token context collapse by splitting monolithic requirements into small, bite-sized story files.
*   **Prompt to AI Panel:**
    ```text
    @.ai-agency/agency.md @.ai-agency/phase1_planning/2_product_manager.md @docs/planning/product_brief.md
    Task: Run /shard to split this product brief into isolated user story files inside docs/planning/stories/.
    ```

### Step 3: Layout Boundaries & Architecture Contracts (UX Designer & Architect)
Establishes user interface contracts, database schemas, and data flow signatures *before* implementation.
*   **Prompt to AI Panel:**
    ```text
    @.ai-agency/agency.md @.ai-agency/phase1_planning/3_ux_designer.md @.ai-agency/phase1_planning/4_architect.md @docs/planning/
    Task: Review the active stories. UX Designer run /layout to define UI wireframe components. Architect run /design to generate explicit database schemas (Prisma/SQL) and TypeScript API interfaces inside docs/planning/architecture_spec.md.
    ```

---

## 🏗️ PHASE 2: CONTEXT-ENGINEERED DEVELOPMENT (The Building Crew)
*Objective: Translate planning blueprints into functional, fully tested code inside an isolated workspace context.*

### Step 1: Initialize an Atomic Feature Branch
Open your terminal and check out a dedicated local branch matching your targeted story ID:
```bash
git checkout -b feature/story-01
```

### Step 2: Work Context Isolation (Scrum Master)
Pins the active context window down so the LLM doesn't get distracted by unrelated codebase modules.
*   **Prompt to AI Panel:**
    ```text
    @.ai-agency/agency.md @.ai-agency/phase2_development/1_scrum_master.md @docs/planning/
    Task: Run /isolate on story_[id].md. Extract and present the exact micro-context payload for the Developer agent.
    ```

### Step 3: Code Execution (Senior Developer)
Implements functional, production-ready code blocks matching the architect's blueprints.
*   **Prompt to AI Panel:**
    ```text
    @.ai-agency/agency.md @.ai-agency/phase2_development/2_developer.md
    Task: Run /build using the Scrum Master micro-context and contract schemas inside docs/planning/architecture_spec.md. Implement all logic without placeholders or incomplete code.
    ```

---

## 🔍 PHASE 3: MASTER CONSENSUS REVIEW & SIGN-OFF
*Objective: Run multi-persona code verification loops locally using your global Git alias before pushing up a PR.*

### Step 1: Execute Local Diff Sweep
Open your standard terminal profile workspace and run your global shortcut command:
```bash
git agency-review
```
*   **What this does:** The automation utility automatically gathers your local staged and unstaged code modifications (`git diff`), checks for proprietary copyright compliance metadata integrity, and exports your codebase modifications directly to `docs/planning/active_review_diff.md`. It outputs a custom prompt macro string onto your terminal screen.

### Step 2: Trigger Committee Consensus Review
Copy the prompt snippet from the terminal output and paste it directly into your AI assistant chat window:
*   **Prompt to AI Panel:**
    ```text
    @.ai-agency/agency.md @docs/planning/active_review_diff.md /review
    ```
*   **What this does:** The **Code Review Router** intercepts the code changes, dispatches specific file structures to the 8 sub-persona review engines, and passes their validations back to the **Gatekeeper**.

### Step 3: Copy Safety Signature Verdict to Clipboard
Once the AI review finishes executing, run your clipboard utility tool inside your standard terminal panel:
```bash
git copy-verdict
```
*   **What this does:** The script locates your newly generated timestamped markdown ledger inside `docs/reviews/`, isolates the safety metrics, and formats them directly to your system's clipboard:
    ```markdown
    ### 🤖 AI Gatekeeper Validation Signature
    - **STATUS:** persona approved
    - **SAFE TO MERGE:** YES
    - **Audit File Reference:** `review_20261106_163000.md`
    ```

Open your Pull Request window on GitHub or Azure DevOps, paste this copied markdown summary directly into the **`AI Agency Gatekeeper Checklist`** field of your pull request template, and hit submit!

