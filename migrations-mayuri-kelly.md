Favorite Movies Challenge
Setup
Create a new Rails application called 'favorite_movies'.
        $ rails new favorite_movies -d postgresql -T
Create the database
        $ rails db:create
Generate a Movie model with a title attribute and a category attribute
    $ rails generate model Movie title:string category:string

Challenges
Add five entries to the database via the Rails console
Create a migration to add a new column to the database called movie_length
Update the values of the five existing attributes to include a movie_length value
Generate a migration to rename the column 'category' to 'genre'