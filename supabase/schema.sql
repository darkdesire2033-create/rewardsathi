-- RewardSathi Supabase Schema
create table users (
  id uuid primary key default gen_random_uuid(),
  phone text unique,
  upi_id text,
  balance numeric default 0,
  pending_balance numeric default 0,
  referral_code text unique,
  referred_by text,
  created_at timestamp default now()
);

create table tasks (
  id uuid primary key default gen_random_uuid(),
  title text,
  description text,
  reward_user numeric,
  reward_admin numeric,
  type text,
  affiliate_link text,
  is_active boolean default true
);

create table user_tasks (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references users(id),
  task_id uuid references tasks(id),
  status text default 'pending',
  proof_image_url text,
  created_at timestamp default now()
);

create table transactions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references users(id),
  amount numeric,
  type text,
  status text,
  source text,
  created_at timestamp default now()
);

create table withdrawals (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references users(id),
  upi_id text,
  amount numeric,
  status text default 'pending',
  created_at timestamp default now()
);

alter table users enable row level security;
alter table transactions enable row level security;
create policy "open" on users for all using (true) with check (true);
create policy "open" on tasks for all using (true) with check (true);
create policy "open" on user_tasks for all using (true) with check (true);
create policy "open" on transactions for all using (true) with check (true);
create policy "open" on withdrawals for all using (true) with check (true);

insert into tasks (title, description, reward_user, reward_admin, type, affiliate_link) values
('Install Navi App & Create Account', 'Install via link, create account', 120, 80, 'App Install', 'REPLACE_WITH_CUELINKS'),
('Upstox Demat Account Open', 'Open account via link, complete KYC', 200, 150, 'App Install', 'REPLACE_WITH_CUELINKS'),
('Amazon Shop & Earn - Mobile', 'Buy any mobile via our Amazon link', 150, 100, 'Shop', 'REPLACE_WITH_CUELINKS'),
('Myntra First Order', 'First order via link', 90, 60, 'Shop', 'REPLACE_WITH_CUELINKS'),
('Survey - CRED App Feedback', 'Install CRED, pay 1 bill', 50, 30, 'Survey', 'REPLACE_WITH_CUELINKS'),
('Submit a Local Deal', 'Submit photo of a local shop offer', 30, 20, 'Deal', 'manual');
