# Mind Weekly Landing Page

A modern, responsive landing page for the Mind Weekly iOS app - a mental health and wellness tracker.

## Features

- **Modern Design**: Clean, minimalist design with smooth animations
- **Fully Responsive**: Works beautifully on all devices (desktop, tablet, mobile)
- **Animated Activity Rings**: Interactive visualization of the app's core feature
- **Smooth Scrolling**: Enhanced user experience with parallax effects
- **Performance Optimized**: Fast loading with pure HTML, CSS, and vanilla JavaScript

## Structure

```
mindweekly.app/
├── index.html                  # Main HTML structure
├── styles.css                  # All styling and animations
├── script.js                   # Interactive features and animations
├── favicon.svg                 # App favicon
├── screenshots/                # Real app screenshots
│   ├── activity-tracker.png
│   ├── daily-rings.png
│   ├── goal-setting.png
│   ├── journaling.png
│   ├── ai-reflection.png
│   ├── statistics.png
│   └── widgets.png
├── setup-screenshots.sh        # Helper script for screenshots
├── screenshots-instructions.md # Detailed screenshot setup guide
├── firebase-setup.md           # Firebase Analytics setup guide
└── README.md                   # This file
```

## Local Development

1. Clone this repository
2. Open `index.html` in your browser
3. That's it! No build process required.

Alternatively, use a local server:

```bash
# Using Python
python -m http.server 8000

# Using Node.js
npx serve

# Using PHP
php -S localhost:8000
```

Then visit `http://localhost:8000`

## GitHub Pages Deployment

This site is ready for GitHub Pages deployment:

1. Push this repository to GitHub
2. Go to repository Settings → Pages
3. Select the branch (usually `main` or `master`)
4. Select the root folder
5. Click Save

Your site will be available at: `https://[username].github.io/[repository-name]/`

## Adding Your App Screenshots

The landing page includes a beautiful screenshots gallery section. To add your real app screenshots:

1. **Save your screenshots** to the `screenshots/` directory with these exact names:
   - `activity-tracker.png` - Main activity tracker screen
   - `daily-rings.png` - Weekly progress view
   - `goal-setting.png` - Goal calibration screen
   - `journaling.png` - Daily journaling interface
   - `mood-tags.png` - Mood influences selector
   - `ai-reflection.png` - AI weekly reflection (Pro feature)
   - `statistics.png` - Statistics and charts (Pro feature)
   - `widgets.png` - iOS home screen widgets

2. **Run the setup script** (optional):
   ```bash
   ./setup-screenshots.sh
   ```

3. **Image specifications**:
   - Format: PNG (preferred) or JPG
   - Aspect ratio: 9:19.5 (iPhone screenshot ratio)
   - Recommended width: 1170px (3x resolution for iPhone 14 Pro)
   - File size: Optimize for web (< 500KB per image recommended)

The gallery will automatically display your screenshots with captions and hover effects. Pro features are highlighted with a special badge.

## Firebase Analytics Setup

The landing page includes Firebase Analytics integration for tracking visitors and engagement.

### Quick Setup

1. **Create a Firebase project** at [Firebase Console](https://console.firebase.google.com/)
2. **Register your web app** and get your config
3. **Update `index.html`** with your Firebase config (around line 38)
4. **Replace** the placeholder values:
   ```javascript
   const firebaseConfig = {
       apiKey: "YOUR_API_KEY",           // ← Replace these
       authDomain: "YOUR_PROJECT.firebaseapp.com",
       projectId: "YOUR_PROJECT",
       // ... etc
   };
   ```

### What's Tracked

Out of the box, the site tracks:
- **Page views** - Every visitor
- **App Store clicks** - When users click download buttons
- **Click locations** - Which section the button was in

See `firebase-setup.md` for detailed setup instructions.

### Privacy

Firebase Analytics is GDPR-compliant and free. IP addresses are anonymized by default.

## Customization

### Social Media Meta Tags

After deploying, update the Open Graph image URLs in `index.html` to match your deployed URL:

```html
<meta property="og:image" content="https://your-actual-domain.com/og-image.png">
<meta name="twitter:image" content="https://your-actual-domain.com/og-image.png">
```

You may also want to create an actual `og-image.png` (1200x630px recommended) for better social media sharing.

### Colors

Edit the CSS variables in `styles.css`:

```css
:root {
    --primary-blue: #007AFF;
    --primary-purple: #5856D6;
    --primary-pink: #FF2D55;
    /* ... more colors */
}
```

### Content

All text content is in `index.html` and can be easily modified:
- Hero section
- Features descriptions
- Call-to-action text
- Footer information

### App Store Link

Update the App Store URL in `index.html`:
```html
href="https://apps.apple.com/se/app/mind-weekly/id6753870098"
```

## Technologies Used

- Pure HTML5
- CSS3 (with modern features like Grid, Flexbox, Custom Properties)
- Vanilla JavaScript (no frameworks)
- SVG animations for Activity Rings

## Browser Support

- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## Performance

- No external dependencies
- Minimal HTTP requests
- Optimized animations using CSS transforms
- Lazy-loaded animations with Intersection Observer

## License

© 2025 Fabrizio Demaria. All rights reserved.

## Contact

For questions or support: fabrizio.f.demaria@gmail.com

