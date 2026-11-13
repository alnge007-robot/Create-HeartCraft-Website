# HeartCraft Website — မြန်မာလို စတင်အသုံးပြုနည်း

ဒီဖိုင်က HeartCraft Starter ကို ကိုယ်ပိုင် Website အဖြစ် စတင်အသုံးပြုဖို့ လမ်းညွှန်ပါ။

## အဆင့် (၁) — Website ကို ဖွင့်ကြည့်ပါ

1. `heartcraft-starter.zip` ကို Extract လုပ်ပါ။
2. Extract လုပ်ထားတဲ့ Folder ထဲက `index.html` ကို Website Hosting သို့မဟုတ် Local Web Server မှာ ဖွင့်ပါ။
3. ကွန်ပျူတာမှာ Visual Studio Code သုံးပါက `index.html` ကို Live Server နဲ့ စမ်းဖွင့်နိုင်ပါတယ်။
4. ဖုန်း Browser မှာလည်း Website ကို ဖွင့်ပြီး အသုံးပြုနိုင်ပါတယ်။

မှတ်ချက် — `file://` အနေနဲ့ တိုက်ရိုက်ဖွင့်တာထက် Website Server / HTTPS URL နဲ့ စမ်းသပ်တာ ပိုသင့်တော်ပါတယ်။

## အဆင့် (၂) — Card တစ်ခု ဖန်တီးပါ

1. Home Page မှာ Birthday, Love, Thank You, Friendship, Miss You, Anniversary, Sorry သို့မဟုတ် General Postcard ကို ရွေးပါ။
2. ပေးပို့သူအမည်၊ လက်ခံသူအမည်၊ ခေါင်းစဉ်နဲ့ စာသားတွေ ထည့်ပါ။ မြန်မာလိုဖြစ်စေ English လိုဖြစ်စေ ရေးနိုင်ပါတယ်။
3. ဓာတ်ပုံ ၅ ပုံအထိ ရွေးပါ။ ပုံတွေကို Website က အလိုအလျောက် အရွယ်အစားလျှော့ပေးပါတယ်။
4. ကိုယ်ပိုင် Audio ဖိုင်ထည့်နိုင်ပါတယ်။ Starter ထဲမှာ မူရင်း demo melody လည်း ပါပါတယ်။
5. အရောင်နဲ့ Animation ရွေးပြီး Live Preview ကို ကြည့်ပါ။
6. `Link / QR ဖန်တီးမယ်` ကို နှိပ်ပါ။

## အဆင့် (၃) — Demo Mode နဲ့ Cloud Mode ကွာခြားချက်

- **Demo Mode:** Card ကို လက်ရှိ Browser ရဲ့ Local Storage ထဲမှာ သိမ်းပါတယ်။ QR/Link ကို ဒီ Browser နဲ့ ဒီဖုန်းမှာပဲ စမ်းဖွင့်နိုင်ပါတယ်။ တခြားဖုန်းကို ပို့ပြီး ဖွင့်လို့ မရသေးပါ။
- **Cloud Mode:** Supabase ချိတ်ဆက်ပြီး Website ကို HTTPS Hosting တင်ထားပါက Card အချက်အလက်တွေကို Cloud မှာ သိမ်းပြီး တခြားဖုန်းတွေကလည်း Link/QR နဲ့ ဖွင့်နိုင်ပါတယ်။

## အဆင့် (၄) — Supabase ချိတ်ဆက်ခြင်း

1. Supabase မှာ Project အသစ်တစ်ခု ဖန်တီးပါ။
2. Project Settings → API ထဲက **Project URL** နဲ့ **public anon key** ကို ကူးယူပါ။
3. Supabase → SQL Editor ထဲမှာ `README.md` ရှိ SQL Setup အပိုင်းကို ကူးထည့်ပြီး Run လုပ်ပါ။
4. `index.html` ကို ဖွင့်ပြီး အောက်ပါနေရာမှာ ကိုယ့် Project URL နဲ့ public anon key ကို ထည့်ပါ။

```js
const SUPABASE_URL = "ဒီနေရာမှာ Project URL ထည့်ပါ";
const SUPABASE_ANON_KEY = "ဒီနေရာမှာ public anon key ထည့်ပါ";
```

**အရေးကြီး:** `service_role` key ကို Website code ထဲ လုံးဝမထည့်ပါနှင့်။ `anon` key သာ အသုံးပြုပါ။ ဒီ Starter မှာ no-login public insert/read policy အသုံးပြုထားတဲ့အတွက် အများပြည်သူအသုံးပြုမယ့် Website အဖြစ် မထုတ်ဝေခင် spam protection, moderation, rate limit နဲ့ data deletion စနစ်တွေ ထပ်ထည့်သင့်ပါတယ်။

## အဆင့် (၅) — GitHub Pages မှာ တင်ခြင်း

1. GitHub မှာ Repository အသစ်တစ်ခု ဖန်တီးပါ။
2. `index.html`, `README.md`, `SETUP-MYANMAR.md` ကို Repository ရဲ့ ပင်မ Folder ထဲ Upload လုပ်ပါ။
3. Repository → Settings → Pages ကို ဝင်ပါ။
4. Build and deployment အောက်မှာ Deploy from a branch ကို ရွေးပါ။
5. Branch ကို `main` နဲ့ Folder ကို `/ (root)` ရွေးပြီး Save လုပ်ပါ။
6. GitHub Pages က Website URL ပေးပါလိမ့်မယ်။ အဲဒီ URL ကို ဖုန်း Browser မှာ စမ်းဖွင့်ပါ။
7. Supabase setting ပါပြီး Website အလုပ်လုပ်မှသာ Card အသစ်ဖန်တီးပြီး QR ကို တခြားဖုန်းနဲ့ စမ်းဖွင့်ပါ။

## မှတ်သားရန်

- လက်ခံသူ Browser က သီချင်းကို အလိုအလျောက်မဖွင့်ပါ။ လက်ခံသူက Play ကို နှိပ်ရပါမယ်။
- Audio ဖိုင်အရွယ်အစားကို Starter မှာ 2MB အထိ သတ်မှတ်ထားပါတယ်။
- Card Link ကို ရရှိသူတိုင်း ဖွင့်ကြည့်နိုင်တာကြောင့် လျှို့ဝှက်အချက်အလက်၊ ဖုန်းနံပါတ်၊ လိပ်စာနဲ့ Password များကို Card ထဲ မထည့်ပါနှင့်။
