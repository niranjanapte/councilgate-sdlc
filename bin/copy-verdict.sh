#!/bin/bash
# ==============================================================================
# 📋 AI AGENCY UTILITY: AUTOMATED VERDICT EXTRACTOR & CLIPBOARD COUPLER
# ==============================================================================
# Execution: chmod +x bin/copy-verdict.sh && ./bin/copy-verdict.sh

REVIEW_DIR="docs/reviews"

# 1. Verify existence of the target audit trail logging registry
if [ ! -d "$REVIEW_DIR" ] || [ -z "$(ls -A "$REVIEW_DIR" 2>/dev/null)" ]; then
    echo "❌ Error: No localized AI audit reports detected inside '${REVIEW_DIR}'."
    exit 1
fi

# 2. Extract the most recently generated timestamped markdown report file
LATEST_REPORT=$(ls -t "${REVIEW_DIR}"/review_*.md 2>/dev/null | head -n 1)

if [ -z "$LATEST_REPORT" ]; then
    echo "❌ Error: Could not resolve a valid timestamped review file payload."
    exit 1
fi

echo "📖 Reading latest audit ledger: ${LATEST_REPORT}"

# 3. Parse and isolate the exact verdict and safety signature lines
STATUS_LINE=$(grep -m 1 "STATUS:" "$LATEST_REPORT")
MERGE_LINE=$(grep -m 1 "SAFE TO MERGE:" "$LATEST_REPORT")

if [ -z "$MERGE_LINE" ]; then
    STATUS_LINE=$(grep -m 1 "STATUS" "$LATEST_REPORT")
    MERGE_LINE=$(grep -m 1 "SAFE TO MERGE" "$LATEST_REPORT")
fi

# Assemble the clipboard buffer string payload
CLIPBOARD_PAYLOAD=$(cat << EOF
### 🤖 AI Gatekeeper Validation Signature
- ${STATUS_LINE:-**STATUS:** Not Found}
- ${MERGE_LINE:-**SAFE TO MERGE:** Unknown}
- **Audit File Reference:** \`$(basename "$LATEST_REPORT")\`
EOF
)

# 4. Detect Host Operating System Clipboard Mechanism and Inject
if command -v pbcopy >/dev/null 2>&1; then
    echo "$CLIPBOARD_PAYLOAD" | pbcopy
    SUCCESS=0
elif command -v xclip >/dev/null 2>&1; then
    echo "$CLIPBOARD_PAYLOAD" | xclip -selection clipboard
    SUCCESS=0
elif command -v xsel >/dev/null 2>&1; then
    echo "$CLIPBOARD_PAYLOAD" | xsel --clipboard --input
    SUCCESS=0
elif command -v clip.exe >/dev/null 2>&1; then
    echo "$CLIPBOARD_PAYLOAD" | clip.exe
    SUCCESS=0
else
    SUCCESS=1
fi

echo "--------------------------------------------------"
echo "$CLIPBOARD_PAYLOAD"
echo "--------------------------------------------------"

if [ $SUCCESS -eq 0 ]; then
    echo "📋 Success! The AI verdict summary matrix has been copied to your clipboard for PR pasting."
else
    echo "⚠️ Clipboard manager not found. Please manually copy the markdown block output displayed above."
fi

