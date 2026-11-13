# HeartCraft code verification

Checks performed:
- Inline JavaScript syntax checked with Node.js.
- JavaScript element-ID references matched against HTML IDs.
- Duplicate HTML IDs checked.
- Basic opening/closing tag counts checked for core HTML elements.
- Recipient-facing language now follows the language saved in the card.

Limitations:
- Static checks cannot guarantee zero bugs on every browser/device.
- Supabase publishing needs a valid project URL, public anon key, database table, storage bucket, and access policies.
- Cross-device sharing requires deployment and Supabase configuration; local demo links only work in the same browser storage.
- QR generation and fonts load from third-party CDNs and require internet access.
