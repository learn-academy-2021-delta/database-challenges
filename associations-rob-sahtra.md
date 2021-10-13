Create a new rails application and database
Check!
rails new credit_cards -d postgresql -T
rails db:create
Create a model for owner
Check!
rails g model Owner name:string address:string
rails db:migrate
An owner has a name and address, and can have multiple credit cards
Check!


Create a model for credit card
Check!
rails g model CreditCard number:string exp_date:string

A credit card has a number, an expiration date, and an owner
Check!
rails g model CreditCard number:string exp_date:string

Challenges

Create three owners and save them in the database
Check!
Owner.create name:"name1", address:"123 sesame st"
Owner.create name:"name2", address:"312 sesame st"
Owner.create name:"name3", address:"231 sesame st"

Create a credit card in the database for each owner
Check!
1 = Owner.first
2 = Owner.find 2
3 = Owner.last

1.credit_cards.create number:"chase ", exp_date:" 8/25"
2.credit_cards.create number:"wells fargo ", exp_date:" 4/23"
3.credit_cards.create number:"capital one ", exp_date:" 7/22"

Add two more credit cards to one of the owners
Check!
2.credit_cards.create number:"bank of amaerica", exp_date:" 12/21"
2.credit_cards.create number:"amazon", exp_date:"2/22"

Stretch Challenge
Add a credit limit to each card


Find the total credit extended to the owner with multiple credit cards
