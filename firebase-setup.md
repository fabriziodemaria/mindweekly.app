# Firebase Analytics Setup Guide

This guide will help you set up Firebase Analytics for your Mind Weekly landing page.

## Step 1: Create a Firebase Project

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Click **"Add project"** or select an existing project
3. Enter project name (e.g., "Mind Weekly Website")
4. (Optional) Enable Google Analytics for the project
5. Click **"Create project"**

## Step 2: Register Your Web App

1. In your Firebase project, click the **Web icon (</>) ** to add a web app
2. Enter app nickname: "Mind Weekly Landing Page"
3. ✅ Check **"Also set up Firebase Hosting"** (optional, but recommended)
4. Click **"Register app"**

## Step 3: Get Your Firebase Config

After registering, you'll see a configuration object that looks like this:

```javascript
const firebaseConfig = {
  apiKey: "AIzaSyXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
  authDomain: "mind-weekly-website.firebaseapp.com",
  projectId: "mind-weekly-website",
  storageBucket: "mind-weekly-website.appspot.com",
  messagingSenderId: "123456789012",
  appId: "1:123456789012:web:abcdef1234567890",
  measurementId: "G-XXXXXXXXXX"
};
```

**Copy these values!** You'll need them in the next step.

## Step 4: Add Config to Your Website

Open `index.html` and find the Firebase configuration section (around line 38):

```javascript
const firebaseConfig = {
    apiKey: "YOUR_API_KEY",              // Replace with your actual values
    authDomain: "YOUR_PROJECT_ID.firebaseapp.com",
    projectId: "YOUR_PROJECT_ID",
    storageBucket: "YOUR_PROJECT_ID.appspot.com",
    messagingSenderId: "YOUR_MESSAGING_SENDER_ID",
    appId: "YOUR_APP_ID",
    measurementId: "YOUR_MEASUREMENT_ID"
};
```

Replace the placeholder values with your actual Firebase config values.

## Step 5: Enable Google Analytics

1. In Firebase Console, go to **Project Settings** (gear icon)
2. Scroll down to **"Your apps"** section
3. Make sure your web app is listed
4. Go to **Analytics** in the left sidebar
5. Make sure it's enabled (it should be by default)

## Step 6: Configure Analytics in Firebase

1. In Firebase Console, click **Analytics** → **Dashboard**
2. Go to **Analytics** → **Events** to see tracked events
3. You can set up custom conversions and audiences here

## Step 7: Test Your Setup

1. Open your website in a browser
2. Open Developer Console (F12)
3. You should see: `"Firebase Analytics initialized successfully"`
4. Go back to Firebase Console → Analytics → Events
5. Within a few minutes, you should see events appearing

## What's Being Tracked

The current setup automatically tracks:

### 1. **Page Views**
- Every time someone visits your landing page
- Event name: `page_view`

### 2. **App Store Clicks**
- When users click "Download on App Store" buttons
- Event name: `app_store_click`
- Includes: Button location (hero, CTA section, etc.)

## Advanced Tracking (Optional)

Want to track more? Add these to your `index.html`:

### Track Section Views

```javascript
// Add to the Firebase Analytics script section
const observeSections = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            logEvent(analytics, 'section_view', {
                section_name: entry.target.className
            });
        }
    });
}, { threshold: 0.5 });

document.querySelectorAll('section').forEach(section => {
    observeSections.observe(section);
});
```

### Track Screenshot Views

```javascript
// Track when users hover over screenshots
document.querySelectorAll('.screenshot-card').forEach((card, index) => {
    card.addEventListener('mouseenter', () => {
        logEvent(analytics, 'screenshot_view', {
            screenshot_name: card.querySelector('h3').textContent
        });
    });
});
```

### Track Navigation Clicks

```javascript
// Track navigation menu clicks
document.querySelectorAll('.nav a').forEach(link => {
    link.addEventListener('click', () => {
        logEvent(analytics, 'nav_click', {
            link_text: link.textContent
        });
    });
});
```

## Viewing Your Analytics

### Real-Time Data
1. Go to Firebase Console → **Analytics** → **Realtime**
2. See live user activity on your site

### Historical Data
1. Go to Firebase Console → **Analytics** → **Events**
2. See event counts, user engagement, etc.
3. Go to **Analytics** → **Dashboard** for overview

### Google Analytics 4
1. Click **"View in Google Analytics"** in Firebase Console
2. Access full Google Analytics 4 features
3. Create custom reports and funnels

## Privacy Considerations

Firebase Analytics is GDPR-compliant, but you may want to:

1. **Add a Cookie Banner** (if required in your region)
2. **Add Privacy Policy Link** to your footer (already included)
3. **Anonymize IP Addresses** (enabled by default in Firebase)

### Optional: Disable Analytics Until User Consents

If you need cookie consent, wrap the Firebase initialization:

```javascript
// Only initialize if user has consented
if (localStorage.getItem('analytics_consent') === 'true') {
    const app = initializeApp(firebaseConfig);
    const analytics = getAnalytics(app);
}
```

## Troubleshooting

### "Firebase Analytics not configured" warning
- You haven't replaced the placeholder config values yet
- Double-check you copied all values correctly

### No events showing in Firebase Console
- Wait 10-30 minutes for data to appear
- Make sure you're looking at the right date range
- Check browser console for errors

### Events not firing
- Open browser DevTools → Network tab
- Look for requests to `google-analytics.com`
- Check for any CORS or network errors

## Cost

Firebase Analytics is **completely free** with no limits on events or users! 🎉

## Useful Links

- [Firebase Console](https://console.firebase.google.com/)
- [Firebase Analytics Documentation](https://firebase.google.com/docs/analytics/get-started?platform=web)
- [Google Analytics 4 Property](https://analytics.google.com/)

## Need Help?

If you run into issues:
1. Check the browser console for errors
2. Verify your Firebase config is correct
3. Make sure your domain is authorized in Firebase Console
4. Check Firebase Console → Project Settings → General → Authorized domains

