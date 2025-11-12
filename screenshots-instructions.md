# Screenshots Setup Instructions

This guide will help you add real app screenshots to your Mind Weekly landing page.

## Screenshot Files Needed

Save your app screenshots to the `screenshots/` directory with these exact names:

| Filename | Description | Screen to Capture |
|----------|-------------|-------------------|
| `activity-tracker.png` | Main dashboard | The "Good morning" screen with all 5 colored activity cards |
| `daily-rings.png` | Weekly progress | The "Rings" screen showing week progress and daily scores |
| `goal-setting.png` | Goal calibration | The "Scoring calibration" screen with target settings |
| `journaling.png` | Journaling interface | The "Journal" screen with gratitude prompt |
| `ai-reflection.png` | AI insights (Pro) | The "Weekly Reflection" screen with AI-generated summary |
| `statistics.png` | Statistics (Pro) | The "Statistics" screen with charts and trends |
| `widgets.png` | Home screen widgets | iOS home screen showing Mind Weekly widgets |

## How to Get Screenshots

### Option 1: From Your Device
1. Open Mind Weekly on your iPhone
2. Navigate to each screen listed above
3. Take a screenshot (Press Side Button + Volume Up)
4. AirDrop or sync photos to your Mac
5. Save to the `screenshots/` folder with the exact filenames above

### Option 2: From App Store Connect
1. Log into [App Store Connect](https://appstoreconnect.apple.com)
2. Go to your Mind Weekly app
3. Navigate to App Store → Screenshots
4. Download the screenshots you've uploaded
5. Rename them according to the table above
6. Save to the `screenshots/` folder

### Option 3: From Simulator (for testing)
1. Run Mind Weekly in Xcode Simulator
2. Navigate to each screen
3. Use `Cmd + S` to save screenshot
4. Rename and save to `screenshots/` folder

## Image Specifications

- **Format**: PNG (preferred) or JPG
- **Aspect Ratio**: 9:19.5 (standard iPhone screenshot ratio)
- **Recommended Size**: 1170 x 2532 pixels (iPhone 14 Pro, 3x)
- **File Size**: Optimize for web (< 500KB per image recommended)
- **Color Space**: sRGB

## Optimization Tips

Before uploading, optimize your images for web:

### Using ImageOptim (Mac)
```bash
# Install ImageOptim via Homebrew
brew install --cask imageoptim

# Drag your screenshots folder to ImageOptim to compress
```

### Using Online Tools
- [TinyPNG](https://tinypng.com) - Great PNG compression
- [Squoosh](https://squoosh.app) - Google's image optimizer

## Quick Setup

1. **Create the directory** (already done):
   ```bash
   cd /Users/fdema/Developer/personal/mindweekly.app
   ls screenshots/  # Verify directory exists
   ```

2. **Add your screenshots**:
   ```bash
   # Copy from your Downloads or wherever you saved them
   cp ~/Downloads/screenshot1.png screenshots/activity-tracker.png
   cp ~/Downloads/screenshot2.png screenshots/daily-rings.png
   # ... and so on for each screenshot
   ```

3. **Verify they're in place**:
   ```bash
   ./setup-screenshots.sh
   ```

4. **Test locally**:
   - Open `index.html` in your browser
   - Scroll to the "See Mind Weekly in action" section
   - Verify all screenshots display correctly

## Troubleshooting

### Screenshots not showing
- Check that filenames match exactly (case-sensitive)
- Verify files are in the `screenshots/` directory
- Check file extensions (.png or .jpg, not .jpeg)
- Clear browser cache and refresh

### Images look blurry
- Use higher resolution screenshots (1170px width minimum)
- Save as PNG instead of JPG for better quality
- Don't resize down too much

### Large file sizes
- Optimize with ImageOptim or TinyPNG
- Consider converting to WebP format for better compression
- Aim for < 500KB per image

## Need Help?

If you run into issues, check:
- File permissions: `chmod 644 screenshots/*.png`
- File paths: Use relative paths from the HTML file
- Browser console: Look for 404 errors

The landing page will display placeholder graphics until you add your real screenshots.

