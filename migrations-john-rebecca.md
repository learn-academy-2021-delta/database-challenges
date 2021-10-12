# Favorite Movies Challenge

Setup (done)
Create a new Rails application called 'favorite_movies'. (done)
    rails new favorite_movies -d postgresql -T
Create the database (done)
    rails db:create
Generate a Movie model with a title attribute and a category attribute
    rails generate model Movie title:string category:string
    rails db:migrate

Challenges
Add five entries to the database via the Rails console
    rails c
    Moviee.create title:"Infinity War", category:"superhero"
Create a migration to add a new column to the database called movie_length
    add_column :moviees, :movie_length, :string
    rails db:migrate
Update the values of the five existing attributes to include a movie_length value
    rails c
    v1.update movie_length: "2 Hours 35 Minutes"
Generate a migration to rename the column 'category' to 'genre'