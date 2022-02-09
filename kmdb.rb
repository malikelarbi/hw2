# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Movie.destroy_all
Cast.destroy_all

# Generate models and tables, according to the domain model
# TODO!

rails generate model Movie
rails generate model Cast
rails db:migrate

# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!

# Movie

values = { title: "Batman Begins", year_released: "2005", rated: "PG-13", name: "Christopher Nolan" }
movie = Movie.new(values)
movie.save

values = { title: "The Dark Knight", year_released: "2008", rated: "PG-13", name: "Christopher Nolan" }
movie = Movie.new(values)
movie.save

values = { title: "The Dark Knight Rises", year_released: "2012", rated: "PG-13", name: "Christopher Nolan" }
movie = Movie.new(values)
movie.save

#Cast

values = { title: "Batman Begins", name: "Christian Bale", character_name: "Bruce Wayne" }
cast = Cast.new(values)
cast.save

values = { title: "Batman Begins", name: "Michael Caine", character_name: "Alfred" }
cast = Cast.new(values)
cast.save

values = { title: "Batman Begins", name: "Liam Neeson", character_name: "Ra's Al Ghul" }
cast = Cast.new(values)
cast.save

values = { title: "Batman Begins", name: "Katie Holmes", character_name: "Rachel Dawes" }
cast = Cast.new(values)
cast.save

values = { title: "Batman Begins", name: "Gary Oldman", character_name: "Commissioner Gordon" }
cast = Cast.new(values)
cast.save

values = { title: "The Dark Knight", name: "Christian Bale", character_name: "Bruce Wayne" }
cast = Cast.new(values)
cast.save

values = { title: "The Dark Knight", name: "Heath Ledger", character_name: "Joker" }
cast = Cast.new(values)
cast.save

values = { title: "The Dark Knight", name: "Aaron Eckhart", character_name: "Harvey Dent" }
cast = Cast.new(values)
cast.save

values = { title: "The Dark Knight", name: "Michael Caine", character_name: "Alfred" }
cast = Cast.new(values)
cast.save

values = { title: "The Dark Knight", name: "Maggie Gyllenhaal", character_name: "Rachel Dawes" }
cast = Cast.new(values)
cast.save

values = { title: "The Dark Knight Rises", name: "Christian Bale", character_name: "Bruce Wayne" }
cast = Cast.new(values)
cast.save

values = { title: "The Dark Knight Rises", name: "Gary Oldman", character_name: "Commissioner Gordon" }
cast = Cast.new(values)
cast.save

values = { title: "The Dark Knight Rises", name: "Tom Hardy", character_name: "Bane" }
cast = Cast.new(values)
cast.save

values = { title: "The Dark Knight Rises", name: "Joseph Gordon-Levitt", character_name: "John Blake" }
cast = Cast.new(values)
cast.save

values = { title: "The Dark Knight Rises", name: "Anne Hathaway", character_name: "Selina Kyle" }
cast = Cast.new(values)
cast.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

movies = Movie.all
for movie in movies
    puts "#{movie.title} - #{movie.year_released} - #{movie.rated} - #{movie.name}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!

casts = Cast.all
for cast in casts
    puts "#{cast.title} - #{cast.name} - #{cast.character_name}"
end