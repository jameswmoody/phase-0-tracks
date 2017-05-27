# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])
  student.to_s
end

get '/contact' do
  "2901 S. King Dr, Chicago, IL 60615"
end

get '/great_job/' do
    name = params[:name]
    if name
      "Good job #{name}!"
    else
      "Good job!"
    end
end

get '/:first_num/add/:second_num' do
  first_num = params[:first_num].to_i
  second_num = params[:second_num].to_i
  sum = first_num + second_num

  "The sum of #{first_num} and #{second_num} is #{sum}."
end

get '/search/:name' do
  student = db.execute("SELECT * FROM students WHERE name=?", [params[:name]])

  student.to_s

end
