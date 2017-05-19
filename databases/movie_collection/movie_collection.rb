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
  p "#{title} was added to your collection"
  database.execute("INSERT INTO movies (title, year, director, starring, rating) VALUES (?, ?, ?, ?, ?)", [title, year, director, starring, rating])
end

def delete_movie(database, title)
  p "#{title} was deleted."
  database.execute("DELETE FROM movies WHERE title = ?", [title])
end

def movie_title_search(database, title)
  database.execute("SELECT * FROM movies WHERE title = ?", [title])
end

def movie_year_search(database, year)
  database.execute("SELECT * FROM movies WHERE year = ?", [year])
end

def movie_director_search(database, director)
  database.execute("SELECT * FROM movies WHERE director = ?", [director])
end

def movie_starring_search(database, starring)
  database.execute("SELECT * FROM movies WHERE starring = ?", [starring])
end

def movie_rating_search(database, rating)
  database.execute("SELECT * FROM movies WHERE rating = ?", [rating])
end

# add_movie(movie_db, "Pulp Fiction", 1994, "Quentin Tarantino", "Samuel L. Jackson", 5)
# add_movie(movie_db, "Trouble Man", 1972, "Ivan Dixon", "Robert Hooks", 3)
# delete_movie(movie_db, "Pulp Fiction")
# p movie_rating_search(movie_db, 5)

# movies = movie_db.execute("SELECT * FROM movies")
# movies.each do |movie|
#   puts "#{movie['title']} | #{movie['year']}. Directed by #{movie['director']} and starring #{movie['starring']}"
# end

puts "Welcome to your Movie Collection! Type 'new' to add a movie, 'delete' to remove one, or search to look a movie up" 
