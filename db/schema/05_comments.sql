DROP TABLE IF EXISTS comments CASCADE;
CREATE TABLE comments (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER NOT NULL DEFAULT 0,
  resource_id INTEGER REFERENCES resources(id) ON DELETE CASCADE,
  comment TEXT
);
