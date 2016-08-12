require 'sqlite3'

db = SQLite3::Database.new('feedback.db')

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
  )
SQL
db.execute(create_table_cmd)

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS reviews (
    id INTEGERY PRIMARY KEY,
    day VARCHAR(255),
    comment VARCHAR(255),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
  )
SQL
db.execute(create_table_cmd)


#add a test user
# db.execute("INSERT INTO users (first_name, last_name) VALUES ('Jake', 'Fishbain')")
#users = db.execute("SELECT * FROM users")
#puts users

#add a test review
#db.execute("INSERT INTO reviews(day, comment, user_id) VALUES ('8/12/2016', 'Jake helped me with my coding!', 1)")
#reviews = db.execute("SELECT * FROM reviews")
#puts reviews

def create_user(db, first_name, last_name)
  db.execute("INSERT INTO users (first_name, last_name) VALUES (?, ?)", [first_name, last_name])
end

create_user(db, "Brad", "Greenspan")
users = db.execute("SELECT * FROM users")
puts users
