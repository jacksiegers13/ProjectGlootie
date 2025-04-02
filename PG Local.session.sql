-- Enable pgcrypto extension (needed for password hashing)
CREATE EXTENSION IF NOT EXISTS pgcrypto;

INSERT INTO users (username, email, password_hash)
VALUES 
  ('spinlover1', 'spin1@example.com', crypt('password123', gen_salt('bf'))),
  ('vinyljunkie', 'vinyl@example.com', crypt('vinylrocks', gen_salt('bf'))),
  ('grooveguru', 'groove@example.com', crypt('letsgospin', gen_salt('bf'))),
  ('tracktaster', 'track@example.com', crypt('musicislife', gen_salt('bf'))),
  ('beatbuffer', 'beat@example.com', crypt('ilovesound', gen_salt('bf')));
