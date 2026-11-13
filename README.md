# HeartCraft — Digital Surprise Studio (Starter)

A responsive bilingual (Myanmar / English) digital postcard website starter. It includes:

- Home page with eight postcard templates
- Burmese / English language toggle
- Live card editor and preview
- Up to five compressed photo uploads
- Optional audio upload and an original generated demo melody
- Color themes, emojis and floating animation effects
- Recipient-facing envelope reveal page
- QR code + share link generation
- Local demo mode and optional Supabase cloud storage for cross-device sharing

## 1. Run the website locally

The easiest way is to open the folder in Visual Studio Code and run `index.html` with the Live Server extension. You can also use any static web server. Avoid opening it as a `file://` URL when testing share links.

In demo mode, cards are stored in the current browser's `localStorage`. This means a demo QR/link only works in the same browser profile and device. It is not a public share link.

## 2. Enable real share links and QR codes (Supabase)

The starter uses Supabase so a recipient can open a card from a different phone. Create a Supabase project, then:

1. Open **Project Settings → API** and copy the Project URL and public `anon` key.
2. Open **SQL Editor** and run the SQL below.
3. In `index.html`, set `SUPABASE_URL` and `SUPABASE_ANON_KEY` to your own values. Use only the public anon key. Never put a `service_role` key in browser code.
4. Host the website on an HTTPS static host. Then publish a card and scan the QR from another device.

### SQL setup

```sql
create table if not exists public.cards (
  id uuid primary key default gen_random_uuid(),
  payload jsonb not null,
  created_at timestamptz not null default now()
);

alter table public.cards enable row level security;

create policy "public can create cards"
on public.cards for insert to anon
with check (true);

create policy "public can read cards"
on public.cards for select to anon
using (true);

insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values (
  'heartcraft-media',
  'heartcraft-media',
  true,
  8388608,
  array['image/jpeg','audio/mpeg','audio/mp4','audio/ogg','audio/wav','audio/webm']
)
on conflict (id) do nothing;

create policy "public can upload HeartCraft media"
on storage.objects for insert to anon
with check (bucket_id = 'heartcraft-media');
```

The bucket is public so published card images/audio can be loaded by the recipient. The browser app uploads only media selected by the card creator.

## 3. Important production notes

This is an MVP starter, not a fully hardened public service. The demo mode is local-only. The no-login Supabase policies above allow anonymous card creation and public reading; before launching to a large audience, add rate limiting, spam protection, moderation/reporting, retention/deletion rules, upload limits and an admin process. Avoid putting sensitive personal information in public cards. Never put passwords, private API keys or Supabase service-role keys in `index.html`.

The website uses Google Fonts, QRCode.js and Supabase JS from CDNs, so those resources need internet access. Browsers require a user tap before playing audio; recipient music therefore uses a visible player rather than autoplay.

## 4. Main files

- `index.html` — complete front-end app
- `README.md` — setup guide and Supabase SQL
