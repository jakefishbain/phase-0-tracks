require 'sqlite3'

db = SQLite3::Database.new("feedback.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
  )
SQL

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS reviews (
    id INTEGERY PRIMARY KEY,
    day VARCHAR(255),
    comment VARCHAR(255),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users.id
  )
SQL