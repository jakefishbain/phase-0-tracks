require 'sqlite3'

db = SQLite3::Database.new("beer_choice.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    favorite VARCHAR(255)
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


initial_beers = {
  "Gumball Head" => ["Pale Ale", 5.6],
  "312" => ["Pale Ale", 4.2],
  "Delirium Tremens" => ["Pale Ale", 8.5],
  "Stella Artois" => ["Lager", 5.0],
  "Guinness" => ["Stout", 4.2],
  "Fresh Squeezed" => ["IPA", 6.4],
  "Miller Lite" => ["Lager", 4.17],
  "Dragonfly" => ["IPA", 6.0]
}

#puts initial_beers
#puts initial_beers.keys
#puts initial_beers["Gumball Head"][0] ======> Pale Ale

puts db.execute("SELECT * from beers")

def create_user(db, name)
  db.execute("INSERT INTO users (name) VALUES (?)", [name])
end


def save_favorite(db, name, favorite)
end

def learn_beers(initial_beers)
  puts initial_beers.keys
end


#-------USER INTERFACE-------------

puts "Please type your name."
user_name = gets.chomp.capitalize
#p db.execute("SELECT name from users")

if db.execute("SELECT name from users").join(' ').include?(user_name)
  puts "You're already in our system, Let's get started!\n"
else
  puts "Hmm, I don't see you, lets add to our system."
  create_user(db, user_name)
  if db.execute("SELECT name from users").join(' ').include?(user_name)
    puts "YAY, it worked!"
  end
end

answer = 'y'
until answer == 'n' do
puts "\nWould you like to learn about a particular beer? (y/n)"
answer= gets.chomp.downcase
  if answer == 'y'
    puts "\nGreat! Here's a list of choices."
    puts initial_beers.keys
    puts "Which beer would you like to learn about?\n"
    learn_about = gets.chomp
    puts "#{initial_beers[learn_about]}."
  end
end



# if answer == 'y'
#   puts "\n"
#   puts "\nGreat! Here's a list of choices."
#   puts "\n"
#   puts initial_beers.keys
#   puts "\n"
#   puts "Which beer would you like to learn about?"
#   learn_about = gets.chomp
#   puts "#{initial_beers[learn_about]}."
#   puts "Would you like to learn about another beer? (y/n)"
#   another = gets.chomp.downcase
#     if another = 'y'
# else
#   puts "Ok, maybe next time."
# end



