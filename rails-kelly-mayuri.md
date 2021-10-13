<!-- As a developer, I have been tasked with creating a database model that will be used in a rolodex application. I want to ensure that the database behaves as expected and the necessary actions can be performed on the database instances.

Set Up

Create a new Rails app named 'rolodex_challenge'.
rails generate model Person first_name:string last_name:string phone:string

Create the database. The output in the terminal should look like this:

Created database 'rolodex_development'

Created database 'rolodex_test'
Generate a model called Person with a first_name, last_name, and phone. All fields should be strings.
rails generate model Person first_name:string last_name:string phone:string

Run a migration to set up the database.
 rails db:migrate
== 20211011234641 CreatePeople: migrating =====================================
-- create_table(:people)
   -> 0.0144s
== 20211011234641 CreatePeople: migrated (0.0145s) ============================


Open up Rails console.
Actions
rails c
Running via Spring preloader in process 17013
Loading development environment (Rails 6.1.4.1)
3.0.0 :001 > Person.all

 Add five family members into the Person table in the Rails console.
Retrieve all the items in the databas
 Person.all
  Person Load (0.2ms)  SELECT "people".* FROM "people" /* loading for inspect */ LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 1, first_name: "Joseph", last_name: "Biden", phone: "5558882299", created_at: "2021-10-12 16:49:47.693084000 +0000", updated_at: "2021-10-12 16:49:47.693084000 +0000">, #<Person id: 2, first_name: "Jill", last_name: "Biden", phone: "5557771188", created_at: "2021-10-12 16:51:49.791447000 +0000", updated_at: "2021-10-12 16:51:49.791447000 +0000">, #<Person id: 3, first_name: "Beau", last_name: "Biden", phone: "6677889900", created_at: "2021-10-12 16:53:20.114718000 +0000", updated_at: "2021-10-12 16:53:20.114718000 +0000">, #<Person id: 4, first_name: "Hunter", last_name: "Biden", phone: "5557773322", created_at: "2021-10-12 16:54:40.342060000 +0000", updated_at: "2021-10-12 16:54:40.342060000 +0000">, #<Person id: 5, first_name: "Naomi", last_name: "Biden", phone: "2224446787", created_at: "2021-10-12 16:55:52.152569000 +0000", updated_at: "2021-10-12 16:55:52.152569000 +0000">]> 
Add yourself to the Person table.
3.0.0 :007 > Person.create(first_name:'Mayuri', last_name:'Dalavai', phone:'7608
057001')
  TRANSACTION (9.2ms)  BEGIN
  Person Create (0.4ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Mayuri"], ["last_name", "Dalavai"], ["phone", "7608057001"], ["created_at", "2021-10-12 17:01:03.474375"], ["updated_at", "2021-10-12 17:01:03.474375"]]
  TRANSACTION (3.5ms)  COMMIT
 => #<Person id: 6, first_name: "Mayuri", last_name: "Dalavai", phone: "7608057001", created_at: "2021-10-12 17:01:03.474375000 +0000", updated_at: "2021-10-12 17:01:03.474375000 +0000"> 

Retrieve all the entries that have the same last_name as you.
3.0.0 :010 > Person.where last_name:'Dalavai'
  Person Load (0.5ms)  SELECT "people".* FROM "people" WHERE "people"."last_name" = $1 /* loading for inspect */ LIMIT $2  [["last_name", "Dalavai"], ["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 6, first_name: "Mayuri", last_name: "Dalavai", phone: "7608057001", created_at: "2021-10-12 17:01:03.474375000 +0000", updated_at: "2021-10-12 17:01:03.474375000 +0000">]> 

Update the phone number of the last entry in the database.

Retrieve the first_name of the third Person in the database. -->
 