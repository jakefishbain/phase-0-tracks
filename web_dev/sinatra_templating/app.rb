# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/search_students' do
  erb :search_student
end
#form asking for age and received as a string
#this string then POSTS to /find_students route (not page) through the search_student.erb



# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end


post '/find_students' do
  age = params['age'].to_i
  redirect "/search_results/#{age}"
end
#converts age from /search_students to int
#submits a route parameter of the age to /search_results
#(this route will never appear to the user)


get '/search_results/:age' do 
  age = params[:age].to_i
  @students = db.execute("SELECT * FROM students WHERE age=?", [age])
  erb :search_results
end
#takes age parameter and selects results from students db using each loop in erb file to print



# add static resources

