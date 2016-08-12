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
    reviewed_user_id INT,
    reviewing_user_id INT,
    FOREIGN KEY (reviewed_user_id) REFERENCES users(id),
    FOREIGN KEY (reviewing_user_id) REFERENCES users(id)
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

# test create_user method
# create_user(db, "Brad", "Greenspan")
users = db.execute("SELECT * FROM users")
#puts users

def create_review(db, day, comment, reviewed_user_id, reviewing_user_id)
  db.execute("INSERT INTO reviews (day, comment, reviewed_user_id, reviewing_user_id) VALUES (?, ?, ?, ?)", [day, comment, reviewed_user_id, reviewing_user_id])
end

# test create_review method
# create_review(db, '8/12/2016', 'Brad was awesome!', 2, 1)
# create_review(db, '8/11/2016', "Jake was great!", 1, 2)
reviews = db.execute("SELECT * FROM reviews")
#puts reviews

#---------------USER INTERFACE-------------------
users.each do |id, first, last|
  puts "#{id} | #{first} #{last}"
end

puts "\nHello and welcome to reviews on demand! Are you currently a user? (y/n)"
current_user = gets.chomp.downcase

#Determine if user, get id and/or create id
if current_user == 'n' 
  puts "Well, nice to meet you! What is your first name?"
  first_name = gets.chomp.capitalize
  puts "\nWhat is your last name?"
  last_name = gets.chomp.capitalize
  puts "\nGreat, I'm adding you to our system!"
  create_user(db, first_name, last_name)
elsif current_user == 'y'
  puts "\nGreat! Let's get started!"
else
  puts "Let's try that again."
end

users.each do |id, first, last|
  puts "#{id} | #{first} #{last}"
end

puts "\nWhat is your user id?"
user_id = gets.chomp.to_i

option = 5
until option == 4 do
  puts "\nPlease select from the following options:"
  puts "1 | see reviews of me"
  puts "2 | see reviews I have completed"
  puts "3 | create a new review"
  puts "4 | exit"
  option = gets.chomp.to_i

  if option == 1
    info = db.execute("SELECT reviews.day, reviews.comment, reviewing_user_id FROM reviews WHERE reviews.reviewed_user_id = #{user_id}")
    puts "\n"
    puts info
  elsif option == 2

  elsif option == 3

  end
end

#Would you like to create a review?













