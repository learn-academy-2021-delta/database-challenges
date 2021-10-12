Challenge: Rolodex
As a developer, I have been tasked with creating a database model that will be used in a rolodex application. I want to ensure that the database behaves as expected and the necessary actions can be performed on the database instances.

====Set Up
Create a new Rails app named 'rolodex_challenge'.
    #rails new rolodex_challenge -d postgresql -T

Create the database. The output in the terminal should look like this:
Created database 'rolodex_development'
Created database 'rolodex_test'
    #rails db:create

Generate a model called Person with a first_name, last_name, and phone. All fields should be strings.
    #rails generate model Person first_name:string last_name:string phone:string

Run a migration to set up the database.
    #rails db:migrate

Open up Rails console.
    #rails c

====Actions
Add five family members into the Person table in the Rails console.
    #Person.create first_name:'Rebecca', last_name:'Reynolds', phone:'123-4567'
    #Person.create first_name:'Brian', last_name:'Pham', phone:'234-5678'
    #Person.create first_name:'John', last_name:'Brady', phone:'345-6789'
    #Person.create first_name:'Peaches', last_name:'Brady', phone:'987-6543'
    #Person.create first_name:'Kit Kat', last_name:'Brady', phone:'876-2345'

Retrieve all the items in the database.
    #Person.all

Add yourself to the Person table.
    #Person.create first_name:'Tamago', last_name:'Reynolds', phone:'382-4890'

Retrieve all the entries that have the same last_name as you.
    #Person.where last_name: "Reynolds"

Update the phone number of the last entry in the database.
    #cat = Person.last
    #cat.update phone: "123-4567"

    WAS: #<Person id: 6, first_name: "Tamago", last_name: "Reynolds", phone: "382-4890", created_at:"2021-10-12 16:45:25.5219160... 3.0.0 :014 >
    CHANGED TO: #<Person id: 6, first_name: "Tamago", last_name: "Reynolds", phone: "123-4567", created_at: "2021-10-12 16:45:25.521916000 +0000", updated_at: "2021-10-12 16:52:45.296524000 +0000"> 

Retrieve the first_name of the third Person in the database.
    #third_person = Person.find 3
    #third_person.first_name

Stretch Challenges

Update all the family members with the same last_name as you, to have the same phone number as you.

    #brady = Person.where last_name: "Brady"
        #Will only show first occurence
    #brady.update phone: "345-6789"
        #will update everything

    RETURN: [
        #<Person id: 3, first_name: "John", last_name: "Brady", phone: "345-6789", created_at: "2021-10-12 16:42:38.211510000 +0000", updated_at: "2021-10-12 16:42:38.211510000 +0000">, 
        #<Person id: 4, first_name: "Peaches", last_name: "Brady", phone: "345-6789", created_at: "2021-10-12 16:42:45.547067000 +0000", updated_at: "2021-10-12 17:03:07.786749000 +0000">, 
        #<Person id: 5, first_name: "Kit Kat", last_name: "Brady", phone: "345-6789", created_at: "2021-10-12 16:42:54.721124000 +0000", updated_at: "2021-10-12 17:03:07.791634000 +0000">
    ] 

Remove all family members that do not have your last_name.
    #not_reynolds = Person.find 2
    #not_reynolds.destroy


    #syntax for deleting multiple items? 