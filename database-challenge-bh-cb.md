rails new rolodex_challenge -d postgresql -T
cd rolodex_challenge
rails db:create
rails server
rails generate model Person first_name:string last_name:string phone:string
rails db:migrate
rails c






Add five family members into the Person table in the Rails console.
Person.create first_name:"charlean", last_name:"baxter", phone:"1234567890"


Retrieve all the items in the database.
Person.all

Add yourself to the Person table.
Person.create first_name:"Brandon", last_name:"Ho", phone:"0987654321"

Retrieve all the entries that have the same last_name as you.
Person.where last_name:"Ho"


Update the phone number of the last entry in the database.
sam_num = Person.last 
sam_num.phone = "1233211232"
sam_num.save

Retrieve the first_name of the third Person in the database.
Person.find 3

Stretch Challenges


Update all the family members with the same last_name as you, to have the same phone number as you.


Remove all family members that do not have your last_name.

