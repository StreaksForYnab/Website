#!/bin/bash

# StreaksForYnab Privacy Policy Update Script
# This script helps update the privacy policy with proper version tracking

set -e

PRIVACY_FILE="privacy.md"
APP_VERSION=""
UPDATE_DATE=""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}StreaksForYnab Privacy Policy Update Script${NC}"
echo "================================================"

# Get app version
read -p "Enter the app version this update applies to (e.g., v1.2.0): " APP_VERSION

# Get update date
read -p "Enter the update date (YYYY-MM-DD) [default: today]: " UPDATE_DATE
if [ -z "$UPDATE_DATE" ]; then
    UPDATE_DATE=$(date +%Y-%m-%d)
fi

# Get update reason
read -p "Briefly describe what changed (e.g., 'Added cloud sync feature'): " UPDATE_REASON

echo ""
echo -e "${YELLOW}Updating privacy policy...${NC}"
echo "Version: $APP_VERSION"
echo "Date: $UPDATE_DATE"
echo "Reason: $UPDATE_REASON"
echo ""

# Create backup
cp "$PRIVACY_FILE" "${PRIVACY_FILE}.backup.$(date +%Y%m%d_%H%M%S)"

# Update the date in the privacy policy
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    sed -i '' "s/^**Last Updated:** .*/**Last Updated:** $UPDATE_DATE/" "$PRIVACY_FILE"
else
    # Linux
    sed -i "s/^**Last Updated:** .*/**Last Updated:** $UPDATE_DATE/" "$PRIVACY_FILE"
fi

# Add version note at the end
echo "" >> "$PRIVACY_FILE"
echo "## Version Information" >> "$PRIVACY_FILE"
echo "" >> "$PRIVACY_FILE"
echo "**App Version:** $APP_VERSION" >> "$PRIVACY_FILE"
echo "**Update Date:** $UPDATE_DATE" >> "$PRIVACY_FILE"
echo "**Changes:** $UPDATE_REASON" >> "$PRIVACY_FILE"
echo "" >> "$PRIVACY_FILE"

echo -e "${GREEN}✓ Privacy policy updated successfully!${NC}"
echo ""
echo -e "${YELLOW}Next steps:${NC}"
echo "1. Review the changes: git diff $PRIVACY_FILE"
echo "2. Commit the update: git add $PRIVACY_FILE && git commit -m \"Update privacy policy for $APP_VERSION\""
echo "3. Push to deploy: git push"
echo ""
echo -e "${YELLOW}Note:${NC} A backup was created at ${PRIVACY_FILE}.backup.$(date +%Y%m%d_%H%M%S)" 