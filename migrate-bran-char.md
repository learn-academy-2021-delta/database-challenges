Favorite Movies Challenge
Setup
Create a new Rails application called 'favorite_movies'.
$ rails new favorite_movies -d postgresql -T
$ cd favorite_movies

Create the database
$ rails db:create
$ rails server

Generate a Movie model with a title attribute and a category attribute
$ rails generate model FavoriteMovie
$ rails db:migrate
$ rails generate migration add_name_to_movies
In the migration rails/ruby folder (check schema to get the table name)
add_column :favorite_movies, :title, :string
add_column :favorite_movies, :category, :string
$ rails db:migrate

Challenges
Add five entries to the database via the Rails console


Create a migration to add a new column to the database called movie_length


Update the values of the five existing attributes to include a movie_length value


Generate a migration to rename the column 'category' to 'genre'
