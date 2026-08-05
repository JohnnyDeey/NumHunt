# NumHunt 🔍

A multiplayer number-hunting PWA. Players race to find a specific tiny number hidden inside a blob shape. Lowest total time wins.

## Setup

### 1. Firebase
1. Go to [Firebase Console](https://console.firebase.google.com/) → New Project
2. Enable **Firestore** (start in test mode, then apply `firestore.rules`)
3. Enable **Authentication → Anonymous**
4. Copy your config from Project Settings → Web App
5. In `index.html`, replace the `firebaseConfig` object with your values

### 2. Icons
Generate `icon-192.png` and `icon-512.png` (e.g. via [favicon.io](https://favicon.io)) and place in project root.

### 3. Deploy to Vercel
```
npm i -g vercel
vercel login
vercel --prod
```

### 4. GitHub Pages (alternative)
Push to a `gh-pages` branch — no build step needed, it's all static HTML.

---

## Game Rules
1. Host creates a room and shares the 6-character code
2. Players join via code
3. Host sets number range, density, and rounds → Start
4. All players see identical number-filled blob shape (same seed → same layout)
5. Host calls out a number (or the game picks one automatically)
6. Tap the correct number → it turns green → your time is recorded
7. Lowest cumulative time across all rounds wins

## File Structure
```
numhunt/
├── index.html       ← entire game (single file)
├── manifest.json    ← PWA manifest
├── sw.js            ← service worker
├── vercel.json      ← Vercel routing
├── firestore.rules  ← Firestore security rules
├── icon-192.png     ← add this
└── icon-512.png     ← add this
```