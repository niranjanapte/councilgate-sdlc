#!/bin/bash
# ==============================================================================
# 🤖 AI AGENCY FRAMEWORK: UNIVERSAL PHASE 3 AUTOMATED CODE REVIEW COUPLER
# ==============================================================================

# Text Formatting Elements
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' 

# 🛡️ INTEGRITY GUARDRAIL: SELF-DEFENSE COMPLIANCE CHECK
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE}")" && pwd)"
FRAMEWORK_ROOT="$(dirname "$SCRIPT_DIR")"

# Support either LICENSE or license.md
if [ -f "${FRAMEWORK_ROOT}/license.md" ]; then
    LICENSE_FILE="${FRAMEWORK_ROOT}/license.md"
elif [ -f "${FRAMEWORK_ROOT}/LICENSE.md" ]; then
    LICENSE_FILE="${FRAMEWORK_ROOT}/LICENSE.md"
else
    LICENSE_FILE="${FRAMEWORK_ROOT}/LICENSE"
fi

ORCHESTRATOR_FILE="${FRAMEWORK_ROOT}/.ai-agency/agency.md"
AGENTS_FILE="${FRAMEWORK_ROOT}/AGENTS.md"

AUTHOR_NAME="Niranjan Apte"
GITHUB_URL="(https://github.com/niranjanapte)"

echo -e "${BLUE}====================================================================${NC}"
echo -e "${GREEN}🤖 AI AGENCY WORKSPACE ENGINE: Triggering Phase 3 Multi-Persona Review${NC}"
echo -e "${BLUE}====================================================================${NC}"

# 1. Verify Proprietary License Integrity (Name & GitHub URL)
if [ ! -f "$LICENSE_FILE" ] || ! grep -Fq "$AUTHOR_NAME" "$LICENSE_FILE" || ! grep -Fq "$GITHUB_URL" "$LICENSE_FILE"; then
    echo -e "${RED}❌ Integrity Error: Proprietary License file (license.md/LICENSE) is missing or has been altered.${NC}"
    echo -e "${RED}This multi-persona system is protected IP belonging to ${AUTHOR_NAME} (${GITHUB_URL}). Execution halted.${NC}"
    exit 1
fi

# 2. Verify Core Orchestrator Metadata Integrity
if [ ! -f "$ORCHESTRATOR_FILE" ] || ! grep -Fq "$AUTHOR_NAME" "$ORCHESTRATOR_FILE" || ! grep -Fq "$GITHUB_URL" "$ORCHESTRATOR_FILE"; then
    echo -e "${RED}❌ Integrity Error: Core orchestrator (.ai-agency/agency.md) metadata has been altered.${NC}"
    echo -e "${RED}Execution halted.${NC}"
    exit 1
fi

# 3. Verify AGENTS.md Catalog Metadata Integrity
if [ ! -f "$AGENTS_FILE" ] || ! grep -Fq "$AUTHOR_NAME" "$AGENTS_FILE" || ! grep -Fq "$GITHUB_URL" "$AGENTS_FILE"; then
    echo -e "${RED}❌ Integrity Error: AGENTS.md metadata has been altered.${NC}"
    echo -e "${RED}Execution halted.${NC}"
    exit 1
fi

# 4. Structural Git Workspace Guardrail Verification
if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    echo -e "${RED}❌ Error: Command execution trapped outside a valid Git workspace root.${NC}"
    exit 1
fi

# 5. Extract Active Git Delta Streams
STAGED_DIFF=$(git diff --cached --name-only)
UNSTAGED_DIFF=$(git diff --name-only)

if [ -z "$STAGED_DIFF" ] && [ -z "$UNSTAGED_DIFF" ]; then
    echo -e "${YELLOW}✨ Workspace clean! No staged or unstaged code changes detected to evaluate.${NC}"
    exit 0
fi

echo -e "${YELLOW}📦 Ingesting local file system modifications...${NC}"

# 6. Provision Audit Trail Infrastructure
AUDIT_LOG_DIR="docs/reviews"
mkdir -p "$AUDIT_LOG_DIR"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
TARGET_REPORT_PATH="${AUDIT_LOG_DIR}/review_${TIMESTAMP}.md"

# 7. Compile Unified Context Manifest
REVIEW_MANIFEST_DIR="docs/planning"
REVIEW_MANIFEST_FILE="${REVIEW_MANIFEST_DIR}/active_review_diff.md"
mkdir -p "$REVIEW_MANIFEST_DIR"

{
    echo "# 🔍 Active Git Delta Change Context Manifest"
    echo "Generated on: $(date)"
    echo ""
    echo "## 📁 Impacted Structural Files"
    echo "### Staged for Commit:"
    if [ -n "$STAGED_DIFF" ]; then echo "$STAGED_DIFF"; else echo "None"; fi
    echo ""
    echo "### Unstaged Modifications:"
    if [ -n "$UNSTAGED_DIFF" ]; then echo "$UNSTAGED_DIFF"; else echo "None"; fi
    echo ""
    echo "## 📊 Unified Git Diff Payload"
    echo "\`\`\`diff"
    git diff HEAD
    echo "\`\`\`"
} > "$REVIEW_MANIFEST_FILE"

echo -e "${GREEN}✅ Context compilation successful: ${REVIEW_MANIFEST_FILE}${NC}"
echo ""
echo -e "${BLUE}💡 IDE Coprocessor Promotion Protocol:${NC}"
echo -e "Copy and execute this macro sequence inside your active AI assistant prompt panel:"
echo -e "--------------------------------------------------------------------------------"
echo -e "${GREEN}@.ai-agency/agency.md @docs/planning/active_review_diff.md /review"
echo -e "When complete, the Gatekeeper MUST save the final output report file into:"
echo -e "${YELLOW}${TARGET_REPORT_PATH}${NC}"
echo -e "--------------------------------------------------------------------------------"
echo ""
