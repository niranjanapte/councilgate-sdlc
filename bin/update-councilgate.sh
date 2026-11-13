#!/bin/bash
# ==============================================================================
# 🔄 COUNCILGATE SDLC: AUTOMATED UPSTREAM FRAMEWORK UPDATER
# ==============================================================================

GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

REPO_URL="https://github.com/niranjanapte/councilgate-sdlc"
TEMP_DIR=$(mktemp -d)

echo -e "${BLUE}🔄 Checking upstream CouncilGate SDLC repository for updates...${NC}"

# 1. Clone the latest main branch quietly into a temporary folder
if ! git clone --depth 1 --quiet "$REPO_URL" "$TEMP_DIR"; then
    echo -e "${RED}❌ Error: Failed to reach upstream repository at ${REPO_URL}.${NC}"
    rm -rf "$TEMP_DIR"
    exit 1
fi

# 2. Refresh core framework files without touching the user's app code
echo -e "${BLUE}📦 Updating core personas, scripts, and license metadata...${NC}"
rm -rf .ai-agency bin
cp -R "$TEMP_DIR/.ai-agency" .
cp -R "$TEMP_DIR/bin" .
cp "$TEMP_DIR/AGENTS.md" .
cp "$TEMP_DIR/setup-git-alias.sh" .

# Copy license file regardless of casing
if [ -f "$TEMP_DIR/license.md" ]; then
    cp "$TEMP_DIR/license.md" .
elif [ -f "$TEMP_DIR/LICENSE" ]; then
    cp "$TEMP_DIR/LICENSE" .
fi

# 3. Restore executable permissions and clean up
chmod +x bin/*.sh setup-git-alias.sh
rm -rf "$TEMP_DIR"

echo -e "${GREEN}✅ CouncilGate SDLC successfully updated to the latest version!${NC}"
