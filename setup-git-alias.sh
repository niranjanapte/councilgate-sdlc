#!/bin/bash
# ==============================================================================
# 🛠️ COUNCILGATE SDLC: CROSS-SHELL SHORTCUT PROVISIONING COUPLER
# ==============================================================================

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}⚙️ Configuring CouncilGate SDLC Global Git Aliases...${NC}"

# 1. Register Phase 3 Code Review Shortcut
REVIEW_SCRIPT="$(pwd)/bin/agency-review.sh"
chmod +x "$REVIEW_SCRIPT" 2>/dev/null
git config --global alias.agency-review "!bash \"$REVIEW_SCRIPT\""

# 2. Register Automated Verdict Clipboard Shortcut
COPY_SCRIPT="$(pwd)/bin/copy-verdict.sh"
chmod +x "$COPY_SCRIPT" 2>/dev/null
git config --global alias.copy-verdict "!bash \"$COPY_SCRIPT\""

# 3. Register Upstream Framework Updater Shortcut
UPDATE_SCRIPT="$(pwd)/bin/update-councilgate.sh"
chmod +x "$UPDATE_SCRIPT" 2>/dev/null
git config --global alias.councilgate-update "!bash \"$UPDATE_SCRIPT\""

echo -e "${GREEN}✅ Configuration Sequence Complete! Global proxy pipelines active.${NC}"
echo -e "Available global commands across any repository:"
echo -e "  • ${BLUE}git agency-review${NC}       (Compile diff & run multi-persona review)"
echo -e "  • ${BLUE}git copy-verdict${NC}        (Copy latest Gatekeeper verdict to clipboard)"
echo -e "  • ${BLUE}git councilgate-update${NC}  (Pull latest CouncilGate personas & scripts)"
