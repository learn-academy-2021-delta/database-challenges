Banking Challenge
Setup
Create a new rails application and database


Create a model for owner
rails generate model Owner name:string address:string

An owner has a name and address, and can have multiple credit cards
rails generate model Owner name:string address:string

Create a model for credit card
rails generate model Card number:string experation_date:string owner_id:integer

A credit card has a number, an expiration date, and an owner
rails generate model Card number:string experation_date:string owner_id:integer

Challenges
Create three owners and save them in the database
Owner.create name:"John Doe", address:"123 lane"
Owner.create name:"Jane Doe", address:"1234 lane"
Owner.create name:"mickey mouse", address:"666 disney"

Create a credit card in the database for each owner
app/model
john = Owner.first
john.cards.create number: "1234 1234 1234 1234", experation_date:"0
1/22"

Add two more credit cards to one of the owners
Stretch Challenge
Add a credit limit to each card
Find the total credit extended to the owner with multiple credit cards