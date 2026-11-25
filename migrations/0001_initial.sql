CREATE TABLE IF NOT EXISTS products (id TEXT PRIMARY KEY,name TEXT NOT NULL,sku TEXT,cost REAL,status TEXT,image_url TEXT,payload_json TEXT NOT NULL,updated_at TEXT);
CREATE INDEX IF NOT EXISTS idx_products_name ON products(name);
CREATE INDEX IF NOT EXISTS idx_products_status ON products(status);
CREATE TABLE IF NOT EXISTS app_settings (setting_key TEXT PRIMARY KEY,setting_value TEXT NOT NULL,updated_at TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS research_records (id TEXT PRIMARY KEY,product_id TEXT NOT NULL,payload_json TEXT NOT NULL,created_at TEXT);
CREATE INDEX IF NOT EXISTS idx_research_product ON research_records(product_id);
CREATE TABLE IF NOT EXISTS video_records (id TEXT PRIMARY KEY,product_key TEXT NOT NULL,product_id TEXT,product_name TEXT,product_sku TEXT,ad_url TEXT,video_url TEXT,thumbnail TEXT,platform TEXT,duration TEXT,payload_json TEXT NOT NULL,updated_at TEXT);
CREATE INDEX IF NOT EXISTS idx_videos_product ON video_records(product_id);
CREATE INDEX IF NOT EXISTS idx_videos_platform ON video_records(platform);
