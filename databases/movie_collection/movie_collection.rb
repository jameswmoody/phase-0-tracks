# This program allows a user to maintain a database of their movie collection
# while also rating them so they will know which are their favorites

require 'sqlite3'

movie_db = SQLite3::Database.new("movies.db")
movie_db.results_as_hash = true

# Creates a database table
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS movies(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    year INT,
    director VARCHAR(255),
    starring VARCHAR(255),
    rating INT
  )
SQL

movie_db.execute(create_table_cmd)

def add_movie(database, title, year, director, starring, rating)
  database.execute("INSERT INTO movies (title, year, director, starring, rating) VALUES (?, ?, ?, ?, ?)", [title, year, director, starring, rating])
end

def delete_movie(database, title)
  database.execute("DELETE FROM movies WHERE title = ?", [title])
end

def update_movie(database, type, update, title)
  case type
  when "title"
    database.execute("UPDATE movies SET title = ? WHERE title = ?", [update, title])
  when "year"
    database.execute("UPDATE movies SET year = ? WHERE title = ?", [update, title])
  when "director"
    database.execute("UPDATE movies SET director = ? WHERE title = ?", [update, title])
  when "actor"
    database.execute("UPDATE movies SET starring = ? WHERE title = ?", [update, title])
  when "rating"
    database.execute("UPDATE movies SET rating = ? WHERE title = ?", [update, title])
  end
end

def all_movies(database)
  movies = database.execute("SELECT * FROM movies")

  if movies.empty?
    puts "No movies added yet!"
  else
    movies.each do |movie|
      puts "---"
      puts "- #{movie['title']} | #{movie['year']}. Directed by #{movie['director']} and starring #{movie['starring']}. Your rating: #{movie['rating']} stars. -"
    end
  end
end

def movie_search(database, type, keyword)
  case type
  when "title"
    results = database.execute("SELECT * FROM movies WHERE title = ?", [keyword])
  when "year"
    results = database.execute("SELECT * FROM movies WHERE year = ?", [keyword])
  when "director"
    results = database.execute("SELECT * FROM movies WHERE director = ?", [keyword])
  when "actor"
    results = database.execute("SELECT * FROM movies WHERE starring = ?", [keyword])
  when "rating"
    results = database.execute("SELECT * FROM movies")
  else
    results = false
  end

  if !results
    puts "Sorry, try again with 'title', 'year', 'director', 'actor', or 'rating'."
  elsif results.empty?
    puts "No results found, try again."
  else
    results.each do |result|
      puts "---"
      puts "#{result['title']} | #{result['year']}. Directed by #{result['director']} and starring #{result['starring']}. Your rating: #{result['rating']} stars."
    end
  end
end

def movie_rating_search(database, rating)
  results = database.execute("SELECT * FROM movies")

  results.each do |result|
    if rating <= result['rating']
      puts "---"
      puts "#{result['title']} | #{result['year']}. Directed by #{result['director']} and starring #{result['starring']}. Your rating: #{result['rating']} stars."
    end
  end
end

finished = false
puts "Welcome to your Movie Collection!"

until finished
  puts "------------------------------------------"
  puts "Type 'new' to add a movie, 'delete' to remove one, 'update' to make a change, or 'search' to look a movie up."
  puts "You can also view your entire movie collection by typing 'all', or 'done' to finish."
  user_action = gets.chomp.downcase

  if user_action == "new"
    p "OK, let's add a new movie to your collection. What's the title?"
    title = gets.chomp.split.map(&:capitalize).join(' ')

    p "Great! What year was #{title} released?"
    year = gets.chomp.to_i

    p "Ahh...#{year}. Who directed #{title}?"
    director = gets.chomp.split.map(&:capitalize).join(' ')

    p "And who starred in it?"
    starring = gets.chomp.split.map(&:capitalize).join(' ')

    p "OK, last question. How many stars out of 5 would you give #{title}?"
    rating = gets.chomp.to_i

    p "Great! #{title} was added to your collection."
    add_movie(movie_db, title, year, director, starring, rating)

  elsif user_action == "delete"
    p "OK, which movie would you like to delete?"
    title = gets.chomp.split.map(&:capitalize).join(' ')

    p "#{title} was deleted."
    delete_movie(movie_db, title)

  elsif user_action == "update"
    p "Alright, what's the title of the movie you'd like to update?"
    title = gets.chomp.split.map(&:capitalize).join(' ')

    p "What about #{title} would you like to change? You can type 'title', 'year', 'director', 'starring', or 'rating'."
    update_type = gets.chomp.downcase

    p "And what would you like to change #{title}'s #{update_type} to?"
    update_value = gets.chomp.split.map(&:capitalize).join(' ')

    if update_type == "year" || "rating"
      update_value.to_i
    end

    update_movie(movie_db, update_type, update_value, title)
    p "Great, #{title}'s #{update_type} was changed to #{update_value}!"

  elsif user_action == "search"
    p "OK, would you like to search by title, year, director, actor, or by rating?"
    search_type = gets.chomp.downcase

    if search_type == "rating"
      p "Alright, what's the minimun rating you'd like to search for? (1-5)"
      rating = gets.chomp.to_i
      movie_rating_search(movie_db, rating)
    else
      p "Alright, what #{search_type} would you like to search for?"
      keyword = gets.chomp.split.map(&:capitalize).join(' ')
      movie_search(movie_db, search_type, keyword)
    end
  elsif user_action == "all"
    all_movies(movie_db)
  elsif user_action == "done"
    finished = true
  else
    puts "Sorry, try again."
  end
end
