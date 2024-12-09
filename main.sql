-- Create the nomnom table if it does not exist
CREATE TABLE IF NOT EXISTS nomnom (
  NAME TEXT,
  NEIGHBOURHOOD TEXT,
  CUISINE TEXT,
  REVIEW REAL,
  PRICE TEXT,
  HEALTH TEXT
);

-- Insert sample data into the nomnom table
INSERT INTO nomnom (NAME, NEIGHBOURHOOD, CUISINE, REVIEW, PRICE, HEALTH) VALUES
  ('Peter', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A'),
  ('Jongro', 'Midtown', 'Korean', 3.5, '$$', 'A'),
  ('Pocha', 'Midtown', 'Pizza', 4, '$$$', 'B'),
  ('Lighthouse', 'Queens', 'Chinese', 3.9, '$', 'A'),
  ('Minca', 'Downtown', 'American', 4.6, '$$$', ''),
  ('Marea', 'Chinatown', 'Chinese', 3.0, '$$', ''),
  ('Dirty Candy', 'Uptown', 'Italian', 4.9, '$$$$', 'B'),
  ('Di Fara Pizza', 'Brooklyn', 'Pizza', 3.8, '$$$', 'A'),
  ('Golden Unicorn', 'Uptown', 'Italian', 3.8, '$$', 'A');

SELECT * FROM nomnom;

SELECT DISTINCT NEIGHBOURHOOD FROM nomnom;

SELECT DISTINCT CUISINE FROM nomnom;

SELECT * FROM nomnom WHERE CUISINE = 'Chinese';

SELECT * FROM nomnom WHERE REVIEW >= 4;

SELECT * FROM nomnom WHERE CUISINE = 'Italian' and PRICE = '$$$';

SELECT * FROM nomnom WHERE NAME LIKE '%Candy%';

SELECT * FROM nomnom WHERE NEIGHBOURHOOD in ('Midtown','Downtown', 'Chinatown');

SELECT * FROM nomnom ORDER BY REVIEW DESC LIMIT 4;