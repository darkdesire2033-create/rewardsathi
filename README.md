# RewardSathi - Cashback + Micro Task Hub

🚀 **Live Demo:** https://magical-baklava-56588d.netlify.app  
💰 **Earning Model:** 60% cashback shared with users via Cuelinks + EarnKaro + AdSmartLink

## Features
- ✅ User Wallet (₹100 min withdrawal via UPI)
- ✅ Task Hub (App Install, Shop & Earn)
- ✅ Refer & Earn ₹25
- ✅ Sponsored Bonus Offers (Ad Link Integrated)
- ✅ Supabase Backend Ready
- ✅ Mobile Responsive

## Project Structure
```
├── index.html              # Main website (React SPA - single file)
├── supabase/
│   ├── schema.sql          # Database tables
│   └── seed.sql            # Sample tasks
├── docs/
│   ├── DEPLOYMENT.md       # How to deploy
│   └── BLOGGER.md          # Blogger version
├── .github/workflows/
│   └── deploy.yml          # Auto deploy to GitHub Pages
├── netlify.toml            # Netlify config
├── vercel.json             # Vercel config
└── README.md
```

## Quick Start - Deploy on GitHub Pages

### Option 1: One-Click Deploy
1. Create new repo on GitHub: `rewardsathi`
2. Upload ALL files from this ZIP
3. Go to Settings > Pages > Source: main branch / root
4. Your site will be live at `https://yourusername.github.io/rewardsathi/`

### Option 2: Git Push (Recommended)
```bash
git init
git add .
git commit -m "Launch RewardSathi"
git branch -M main
git remote add origin https://github.com/YOURUSERNAME/rewardsathi.git
git push -u origin main
```
Then enable GitHub Pages in settings.

## Backend Setup (Supabase)
1. Go to supabase.com > New Project
2. SQL Editor > Run `supabase/schema.sql`
3. Then Run `supabase/seed.sql`
4. Copy URL + Anon Key to your site config

## Ad Integration
Your smart link is already integrated:
`https://wwp.giriuhot.com/redirect-zone/1058d4c8`
- Top banner + Floating button
- Replace with your own links in `index.html` search for `giriuhot`

## Monetization
- **Cuelinks:** Amazon, Myntra, Flipkart - 6-15% commission
- **EarnKaro:** Upstox, Navi - ₹200-500 per install
- **AdSmartLink:** Your current link - CPM based

## License
MIT - Free to use

Built for Sahil Khan - Bangalore, India
