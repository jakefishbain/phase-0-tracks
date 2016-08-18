#require gems
require 'sinatra'
require 'sqlite3'

#serve static files (CSS)
#set public folder
set :public_folder, File.dirname(__FILE__) + '/static'


db = SQLite3::Database.new("beerapp.db")
db.results_as_hash = true

#show all beers on homepage
get '/' do
  @beers = db.execute("SELECT * FROM beers")
  erb :home
end

#add a beer
get '/beers/new' do
  erb :new_beer
end

#save that beer!
post '/beers' do 
  db.execute("INSERT INTO beers (name, brewery, alc_percentage) VALUES (?,?,?)", [params['name'], params['brewery'], params['alc_percentage'].to_f])
  redirect '/'
end