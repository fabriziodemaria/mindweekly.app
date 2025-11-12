#!/bin/bash

# Setup script to create placeholder screenshots
# Run this script to create placeholder images for testing

SCREENSHOTS_DIR="screenshots"
PLACEHOLDER="$SCREENSHOTS_DIR/placeholder.svg"

# Array of screenshot filenames
screenshots=(
    "activity-tracker.png"
    "daily-rings.png"
    "goal-setting.png"
    "journaling.png"
    "ai-reflection.png"
    "statistics.png"
    "widgets.png"
)

echo "🖼️  Setting up screenshot placeholders..."

# Check if placeholder exists
if [ ! -f "$PLACEHOLDER" ]; then
    echo "❌ Placeholder SVG not found!"
    exit 1
fi

# Create symbolic links to placeholder for each screenshot (if they don't exist)
for screenshot in "${screenshots[@]}"; do
    filepath="$SCREENSHOTS_DIR/$screenshot"
    if [ ! -f "$filepath" ]; then
        # For now, just note which files are missing
        echo "⚠️  Missing: $screenshot (will show placeholder)"
    else
        echo "✅ Found: $screenshot"
    fi
done

echo ""
echo "📸 To add your real screenshots:"
echo "   1. Save your app screenshots from the App Store screenshots or device"
echo "   2. Copy them to the screenshots/ directory with these names:"
echo ""
for screenshot in "${screenshots[@]}"; do
    echo "      - $screenshot"
done
echo ""
echo "🎨 The placeholders will show until you replace them with real images."

