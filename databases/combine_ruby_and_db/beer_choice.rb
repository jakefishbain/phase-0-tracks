require 'sqlite3'

db = SQLite3::Database.new("beer_choice.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL
db.execute(create_table_cmd)

#CREATE A TEST USER
#db.execute("INSERT INTO users (name) VALUES ('Jake')")


def create_user(db, name)
  db.execute("INSERT INTO users (name) VALUES (?)", [name])
end


#create_user(db, "Brad")
puts "Please select your name or type new."
startup = gets.chomp
#p db.execute("SELECT name from users")

if db.execute("SELECT name from users").join(' ').include?(startup)
  puts "You're already in our system!"
else
  puts "We'll have to add you."
end
