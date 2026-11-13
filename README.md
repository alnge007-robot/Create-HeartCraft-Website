# HeartCraft Myanmar — Romantic Greeting Card Website

A responsive bilingual-ready frontend starter for creating interactive greeting cards.

## Included
- Romantic pink/luxury responsive home page
- Birthday, Love Note, Thank You, Friendship, Miss You, Anniversary, Sorry and Any Occasion categories
- Card editor with recipient, date, message, up to five photos, optional audio and animation selection
- Envelope → message → cake/candle → photo gallery receiver experience
- Floating emoji animations and browser share/copy link action
- Supabase starter SQL schema

## Run locally
1. Unzip the project.
2. Open `index.html` in a browser, or run a local static server from this folder:
   - `python -m http.server 8000`
   - visit `http://localhost:8000`

## Important: local demo vs real online sharing
This ZIP is a working frontend prototype. The current editor stores card data in the creator's browser `localStorage`. Therefore a link opened on another phone will NOT automatically contain the photos/music/card. Public sharing requires a backend database and file storage. The supplied `database/schema.sql` is a starting point for Supabase, but production integration is not wired yet.

### Supabase deployment checklist
1. Create a free Supabase project.
2. Run `database/schema.sql` in SQL Editor.
3. Create a Storage bucket for card-media.
4. Add a server-side or authenticated create-card flow that uploads images/audio and stores their public or signed URLs in `cards`.
5. Change `js/editor.js` to insert card metadata and uploaded media URLs into Supabase.
6. Change `js/receiver.js` to fetch the card by `id` from Supabase instead of `localStorage`.
7. Configure Row Level Security carefully. Do not expose the service-role key in browser JavaScript.
8. Deploy this folder to a static host such as GitHub Pages, Cloudflare Pages, or Vercel.

## Free hosting
You can deploy the static frontend on GitHub Pages or Cloudflare Pages free tiers. Supabase free tier may be used for initial testing; check current provider limits before launch.

## QR Code
The project reserves `js/qr.js` and `js/share.js` for QR support. After the card has a permanent public URL, add a QR library (for example qrcodejs) and render a QR from that URL. To place the recipient photo in the QR center, generate the QR at high error correction and overlay a small rounded image; test scans on multiple phones. A QR cannot make a browser-local card available online by itself.

## Music and browser permissions
Browsers block autoplay until the receiver taps. This project starts audio after the cake interaction. Only upload music you own or have permission to distribute.

## Production readiness
Before public launch, add authentication or an unguessable edit token, file-size/type validation, rate limiting, abuse reporting, privacy/deletion controls, and proper database/storage policies. This starter is not a finished secure production service.
