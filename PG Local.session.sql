CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password_hash TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Enable pgcrypto extension (needed for password hashing)
CREATE EXTENSION IF NOT EXISTS pgcrypto;

INSERT INTO users (username, email, password_hash)
VALUES 
  ('spinlover1', 'spin1@example.com', crypt('password123', gen_salt('bf'))),
  ('vinyljunkie', 'vinyl@example.com', crypt('vinylrocks', gen_salt('bf'))),
  ('grooveguru', 'groove@example.com', crypt('letsgospin', gen_salt('bf'))),
  ('tracktaster', 'track@example.com', crypt('musicislife', gen_salt('bf'))),
  ('beatbuffer', 'beat@example.com', crypt('ilovesound', gen_salt('bf')));
