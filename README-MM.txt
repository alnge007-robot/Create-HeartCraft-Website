HEARTCRAFT — COMPLETE STARTER
==============================

ဒီ project ကို GitHub / Netlify မှာ တင်အသုံးပြုနိုင်ပါတယ်။ HeartCraft website ရဲ့ card category, personalized card, envelope opening, birthday cake/candle, photo gallery, music, floating emoji, share link နဲ့ QR code အတွေ့အကြုံတွေကို ကိုယ်ပိုင် code နဲ့ ပြုလုပ်ထားပါတယ်။ မူရင်း website ရဲ့ code/design/assets ကို ကူးယူထားခြင်း မဟုတ်ပါ။

ပါဝင်သောဖိုင်များ
----------------
index.html          Website စာမျက်နှာ
styles.css          Design / responsive layout
app.js              Card builder နှင့် receiver animation
supabase-config.js  Supabase URL နှင့် anon key ထည့်ရန်
supabase-setup.sql  Supabase database/storage စတင်တည်ဆောက်ရန်

အရေးကြီး — Supabase ချိတ်ဆက်ခြင်း
---------------------------------
Share link ကို အခြားဖုန်း/ကွန်ပျူတာမှာ ဖွင့်နိုင်ဖို့ Supabase ချိတ်ရန် အကြံပြုပါတယ်။ Supabase မချိတ်ဘဲ စမ်းသပ်နိုင်သော်လည်း fallback link တွင် ဓာတ်ပုံ/သီချင်း မပါဝင်နိုင်သလို URL အရွယ်အစားကန့်သတ်ချက်ရှိပါတယ်။

1. https://supabase.com/dashboard ကိုဖွင့်ပါ။
2. မိမိ project ကိုရွေးပါ။
3. ဘယ်ဘက် SQL Editor > New query ကိုနှိပ်ပါ။
4. ဒီ ZIP ထဲက supabase-setup.sql ကိုဖွင့်ပြီး အားလုံး Copy လုပ်ပါ။ SQL Editor ထဲ Paste လုပ်ပြီး Run ကိုနှိပ်ပါ။ ယခင် HeartCraft version ၏ cards table နှင့် မတိုက်မိစေရန် ဒီ version က heartcraft_cards_v2 table နှင့် heartcraft-assets-v2 bucket အသစ်ကို သုံးထားပါတယ်။
5. Project Settings > API (သို့) Connect မှ Project URL နှင့် anon / publishable public key ကိုယူပါ။
6. supabase-config.js ကိုဖွင့်ပြီး အောက်ပါနှစ်ခုကို ထည့်ပါ။
   window.HEARTCRAFT_SUPABASE_URL = 'သင့် Project URL';
   window.HEARTCRAFT_SUPABASE_ANON_KEY = 'သင့် anon public key';
7. Save လုပ်ပါ။ service_role / secret key ကို လုံးဝမထည့်ပါနှင့်။

GitHub တင်နည်း
--------------
1. GitHub မှာ New repository တစ်ခုဖန်တီးပါ (ဥပမာ heartcraft)။
2. ဒီ ZIP ကို Extract လုပ်ပါ။ HeartCraft-Complete folder အတွင်းရှိ ဖိုင်များကို repository ရဲ့ root ထဲ Upload files လုပ်ပါ။ index.html က root ထဲမှာ တိုက်ရိုက်ရှိရပါမယ်။
3. Commit changes နှိပ်ပါ။
4. Repository > Settings > Pages ကိုဖွင့်ပါ။
5. Build and deployment အောက်မှာ Deploy from a branch ကိုရွေးပါ။ Branch: main, Folder: / (root) ရွေးပြီး Save လုပ်ပါ။
6. GitHub Pages က ထုတ်ပေးတဲ့ URL ကိုဖွင့်စမ်းပါ။ ပထမဆုံး deploy အတွက် အချိန်အနည်းငယ်ကြာနိုင်ပါတယ်။

Netlify တင်နည်း
--------------
1. ZIP ကို Extract လုပ်ပါ။
2. Netlify Drop ထဲသို့ HeartCraft-Complete folder ကို Drag & Drop လုပ်ပါ။
3. ထွက်လာတဲ့ website URL ကိုဖွင့်စမ်းပါ။

အသုံးပြုနည်း
------------
1. Home page မှ Birthday / Love / Thank You / Friendship / Miss You / Anniversary / Sorry / Any Occasion ကိုရွေးပါ။
2. လက်ခံသူအမည်၊ ပေးပို့သူအမည်၊ ရက်စွဲ၊ ဆုတောင်းစာ၊ theme တို့ဖြည့်ပါ။
3. ဓာတ်ပုံ ၅ ပုံအထိ (တစ်ပုံ 5MB အောက်) ရွေးပါ။ သီချင်းဖိုင်တစ်ခု (10MB အောက်) ထည့်နိုင်ပါတယ်။
4. Animated emoji များရွေးပြီး Create my surprise နှိပ်ပါ။
5. Supabase ချိတ်ထားလျှင် ပုံ/သီချင်းများပါ သိမ်းပြီး share link ထုတ်ပေးပါမယ်။ QR code ကို Download QR image နှိပ်ပြီး သိမ်းနိုင်ပါတယ်။ QR အလယ်မှာ ရွေးထားတဲ့ ပထမဓာတ်ပုံ ပေါ်ပါမယ်။
6. လက်ခံသူက link ဖွင့်ပြီး envelope ကိုဖွင့်၊ မွေးနေ့ဖြစ်လျှင် cake/candle ကိုနှိပ်၊ ဓာတ်ပုံ gallery နဲ့ ဆုတောင်းစာကို ကြည့်နိုင်ပါတယ်။ Browser က အသံဖွင့်ခွင့်တောင်းပါက ခွင့်ပြုပါ။

မှတ်ချက် / လုံခြုံရေး
-------------------
- Supabase SQL သည် စတင်စမ်းသပ်ရန် public insert/read policy ကို သုံးထားသည်။ Link ရသူများက card ကိုဖတ်နိုင်ပြီး public bucket ထဲရှိ media URL များကိုလည်း ဖွင့်နိုင်သည်။ လျှို့ဝှက်/ကိုယ်ရေးကိုယ်တာအချက်အလက် မထည့်ပါနှင့်။ Production အတွက် login, rate limit, abuse protection နှင့် card owner-based RLS ထပ်တိုးသင့်သည်။
- QR code ထုတ်ရန် အင်တာနက်ချိတ်ဆက်ထားပြီး QRCode CDN load ဖြစ်ရပါမည်။
- သီချင်းဖွင့်ခြင်းကို ဖုန်း browser များက user tap လုပ်ပြီးမှ ခွင့်ပြုတတ်သည်။ Birthday tune က built-in synthesized melody ဖြစ်ပြီး uploaded song ရှိပါက အဲဒီဖိုင်ကို ဖွင့်ပေးသည်။
- User uploaded photo/audio များကို Supabase public storage တွင် တင်မည်ဖြစ်သောကြောင့် မျှဝေခွင့်ရှိသည့်ဖိုင်များကိုသာ အသုံးပြုပါ။
