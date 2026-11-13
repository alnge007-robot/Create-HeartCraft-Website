-- Run this once in Supabase Dashboard > SQL Editor.
-- This starter makes cards readable by anyone who has the unlisted link.
-- Do NOT put your service_role key in website files.

create table if not exists public.heartcraft_cards_v2 (
  id text primary key,
  payload jsonb not null,
  created_at timestamptz not null default now()
);

alter table public.heartcraft_cards_v2 enable row level security;

drop policy if exists "Public can create cards v2" on public.heartcraft_cards_v2;
create policy "Public can create cards v2" on public.heartcraft_cards_v2
  for insert to anon, authenticated with check (true);

drop policy if exists "Public can read shared cards v2" on public.heartcraft_cards_v2;
create policy "Public can read shared cards v2" on public.heartcraft_cards_v2
  for select to anon, authenticated using (true);

insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values ('heartcraft-assets-v2', 'heartcraft-assets-v2', true, 10485760,
  array['image/jpeg','image/png','image/webp','audio/mpeg','audio/mp4','audio/wav','audio/ogg','audio/aac'])
on conflict (id) do update set public = true, file_size_limit = 10485760;

drop policy if exists "Public can upload card assets" on storage.objects;
create policy "Public can upload card assets" on storage.objects
  for insert to anon, authenticated with check (bucket_id = 'heartcraft-assets-v2');

drop policy if exists "Public can view card assets" on storage.objects;
create policy "Public can view card assets" on storage.objects
  for select to anon, authenticated using (bucket_id = 'heartcraft-assets-v2');
