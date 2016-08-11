require 'sqlite3'

db = SQLite3::Database.new("beer_choice.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS beers (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    profile VARCHAR(255),
    alc_percent INT
  )
SQL

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS favorites (
    id INTEGER PRIMARY KEY,
    user_id INT,
    beer_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (beer_id) REFERENCES beers(id)
  )
SQL
db.execute(create_table_cmd)

#CREATE A TEST USER
#db.execute("INSERT INTO users (name) VALUES ('Jake')")


def create_user(db, name)
  db.execute("INSERT INTO users (name) VALUES (?)", [name])
end


puts "Please type your name."
user_name = gets.chomp.capitalize
#p db.execute("SELECT name from users")

if db.execute("SELECT name from users").join(' ').include?(user_name)
  puts "You're already in our system, Let's get started!"
else
  puts "Hmm, I don't see you, lets add to our system."
  create_user(db, user_name)
  if db.execute("SELECT name from users").join(' ').include?(user_name)
    puts "YAY, it worked!"
  else
    puts "Hmm, something went wrong..."
  end
end
