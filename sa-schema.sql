
CREATE TABLE simple_antiques_merchandise (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  description TEXT,
  long_description TEXT,
  image TEXT,
  price INTEGER,
  category TEXT,
  status TEXT DEFAULT 'active'
);
CREATE TABLE simple_antiques_services (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  description TEXT,
  long_description TEXT,
  image TEXT,
  price INTEGER,
  category TEXT,
  status TEXT DEFAULT 'active'
);
CREATE TABLE simple_antiques_gallery (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  description TEXT,
  long_description TEXT,
  image TEXT,
  price INTEGER,
  category TEXT,
  status TEXT DEFAULT 'active'
);
CREATE TABLE simple_antiques_blogs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT NOT NULL,
  slug TEXT NOT NULL,
  author TEXT,
  image TEXT,
  content TEXT,
  createdAt TEXT DEFAULT CURRENT_TIMESTAMP,
  shortcontent TEXT,
  longcontent TEXT,
  status TEXT DEFAULT 'active'
);
CREATE TABLE simple_antiques_orders (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  cart JSON NOT NULL,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  phone TEXT,
  createdAt TEXT DEFAULT CURRENT_TIMESTAMP,
  status TEXT DEFAULT 'pending',
  address TEXT,
  notes TEXT
);
CREATE TABLE simple_antiques_analytics (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  session_id TEXT NOT NULL,
  timestamp TEXT NOT NULL,
  url TEXT NOT NULL,
  referrer TEXT,
  user_agent TEXT,
  ip TEXT,
  country TEXT,
  city TEXT,
  event_type TEXT DEFAULT 'pageview',
  metadata TEXT
);
CREATE TABLE simple_antiques_products (
  id INTEGER PRIMARY KEY,
  title TEXT,
  description TEXT,
  price INTEGER,
  category TEXT,
  image TEXT,
  images TEXT,
  longDescription TEXT,
  status TEXT DEFAULT 'active',
  slug TEXT,
  is_published BOOLEAN DEFAULT TRUE,
  is_sold BOOLEAN DEFAULT FALSE,
  sold_at DATETIME,
  quantity INTEGER DEFAULT 1,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  background TEXT
);
