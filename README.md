# HeartCraft — GitHub Pages + Firebase (English / Myanmar)

A responsive greeting-card starter with an original design. This is an independently written starter and does not reuse HeartCraft's proprietary source code or artwork.

## Included

- English / Myanmar language toggle
- Eight card types: Birthday, Love Note, Thank You, Friendship, Miss You, Anniversary, Sorry, Any Occasion
- Creator editor: recipient, sender, date, theme and message
- Up to five photos and one music file
- Receiver sequence: envelope → message → cake/candle + music → photo gallery
- Firestore records, Firebase Storage uploads and shareable card URLs
- Anonymous Firebase Authentication; editing is limited to the same anonymous account/browser
- Firebase Security Rules for card ownership and media upload limits

## 1. Create Firebase project

1. Open https://console.firebase.google.com/ and create a project.
2. In **Project settings → General → Your apps**, add a **Web app** and copy its config.
3. In **Build → Authentication → Sign-in method**, enable **Anonymous**.
4. In **Build → Firestore Database**, create a database.
5. In **Build → Storage**, create the default Storage bucket.
6. Open `index.html` and replace the placeholder values in `firebaseConfig` with the exact Web App config values. Use the exact `storageBucket` value shown by Firebase; newer projects may use a `*.firebasestorage.app` domain.
7. In Firestore → Rules, paste `firestore.rules` and click **Publish**.
8. In Storage → Rules, paste `storage.rules` and click **Publish**.
9. In Authentication → Settings → Authorized domains, add the GitHub Pages hostname, e.g. `YOUR-USERNAME.github.io`. Add `localhost` only if testing locally.

## 2. Publish to GitHub Pages

1. Create a repository, for example `heartcraft`.
2. Upload the **contents** of this project folder to the repository root. Confirm `index.html`, `firestore.rules`, and `storage.rules` are visible at the root.
3. Open repository **Settings → Pages**.
4. Under **Build and deployment**, select **Deploy from a branch**.
5. Select branch `main` and folder `/ (root)`, then Save.
6. Wait for the Pages deployment to finish. The URL normally looks like `https://YOUR-USERNAME.github.io/heartcraft/`.
7. Open the URL on your phone and test creating a card.

## 3. Test checklist

- Switch between English and Myanmar.
- Open each of the eight card types and confirm the editor title matches.
- Preview a card with no photos, then with photos.
- Try selecting more than five photos; only the first five should be used.
- Try an unsupported file type or a file over 9 MB; the page should show a validation message.
- Publish a card with no media, then publish one with photos and music.
- Open the share link in a different browser or phone.
- Confirm the receiver sequence works: envelope, message, candle/music, gallery.
- Confirm only the creator browser/account can edit the card.

## 4. Important limitations and safety

- This is a static GitHub Pages app; it has no private server-side code.
- Anonymous sign-in is tied to the browser's persisted Firebase identity. Clearing browser data or switching browsers/devices may make creator editing unavailable. Add a permanent sign-in method before using this as a production service.
- Published card documents and their media are publicly readable by design so recipients can open shared links. Do not upload private or sensitive photos or music unless you have permission.
- Front-end checks limit selected media to 9 MB per file and five images. Storage rules enforce a 10 MB maximum and image/audio MIME types. Add quotas, moderation, abuse protection, expiry/deletion workflows and a privacy notice before public launch.
- The Firebase Web API key is intended for client-side use. Restrict it where appropriate; security depends on Firebase Authentication and Security Rules. Never publish a service-account private key.
- Mobile browsers generally require a user tap before playing audio. This project starts the uploaded music only after the recipient taps the candle button.
- The code has been checked for JavaScript syntax and basic static consistency. Live Firebase behavior still needs to be tested after your own Firebase config and rules are deployed.

## Troubleshooting

- `auth/operation-not-allowed`: enable Anonymous sign-in.
- `auth/unauthorized-domain`: add the exact `*.github.io` hostname to Firebase Authorized domains.
- `permission-denied`: verify the current user is signed in and both Firestore/Storage rules are published.
- Photo/music upload errors: verify the exact Storage bucket value and Storage rules.
- Blank page: check the browser developer console for module import, config or Firebase errors.
