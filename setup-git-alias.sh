#!/bin/bash
# ==============================================================================
# 🛠️ UNIVERSAL AI AGENCY INTERFACE: CROSS-SHELL SHORTCUT PROVISIONING COUPLER
# ==============================================================================

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}⚙️ Configuring Universal Git Alias 'git agency-review'...${NC}"

# 1. Compute and authorize the Phase 3 Code Review script path
SCRIPT_PATH="$(pwd)/bin/agency-review.sh"
chmod +x "$SCRIPT_PATH" 2>/dev/null
git config --global alias.agency-review "!bash $SCRIPT_PATH"

echo -e "${BLUE}⚙️ Configuring Universal Git Alias 'git copy-verdict'...${NC}"

# 2. Compute and authorize the automated Verdict Clipboard script path
COPY_SCRIPT_PATH="$(pwd)/bin/copy-verdict.sh"
chmod +x "$COPY_SCRIPT_PATH" 2>/dev/null
git config --global alias.copy-verdict "!bash $COPY_SCRIPT_PATH"

echo -e "${GREEN}✅ Configuration Sequence Complete! Global proxy pipelines active.${NC}"
echo -e "You can now execute '${BLUE}git agency-review${NC}' or '${BLUE}git copy-verdict${NC}' inside any repository workspace branch."

