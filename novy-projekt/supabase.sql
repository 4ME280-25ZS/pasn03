-- Supabase / Postgres schema for simple wishlist

-- items table
CREATE TABLE IF NOT EXISTS items (
  id serial PRIMARY KEY,
  title text NOT NULL,
  description text,
  quantity int NOT NULL DEFAULT 1,
  created_at timestamptz DEFAULT now()
);

-- reservations table
CREATE TABLE IF NOT EXISTS reservations (
  id serial PRIMARY KEY,
  item_id int REFERENCES items(id) ON DELETE CASCADE,
  name text NOT NULL,
  qty int NOT NULL DEFAULT 1,
  status text NOT NULL DEFAULT 'reserved', -- reserved, cancelled, bought
  created_at timestamptz DEFAULT now()
);

-- optional indexes
CREATE INDEX IF NOT EXISTS idx_res_item ON reservations(item_id);

-- sample data (uncomment to insert)
-- INSERT INTO items (title, description, quantity) VALUES
-- ('Kniha o designu','Inspirativní kniha',1),
-- ('Kamera','Malá digitální kamera',1),
-- ('Kabely USB-C','Sada 3ks',3);
