Setup
Create a new rails application and database
rails new BankChallenge -d postgresql -T

Create a model for owner
An owner has a name and address, and can have multiple credit cards
rails g model Owner name:string address:string credit_cards:string


Create a model for credit card
A credit card has a number, an expiration date, and an owner
rails g model CreditCard number:string expirationdate:string owner:string owner_id:integer

Challenges
Create three owners and save them in the database
3.0.0 :004 > Owner.all
  Owner Load (0.3ms)  SELECT "owners".* FROM "owners" /* loading for inspect */ LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Owner id: 1, name: "Ashley", address: "1 main st San Diego", credit_cards: "Discover", created_at: "2021-10-12 23:21:41.531005000 +0000", updated_at: "2021-10-12 23:21:41.531005000 +0000">, #<Owner id: 2, name: "Kevin", address: "2 main st Murrieta", credit_cards: "visa", created_at: "2021-10-12 23:23:22.269784000 +0000", updated_at: "2021-10-12 23:23:22.269784000 +0000">, #<Owner id: 3, name: "Austin", address: "main st Texas", credit_cards: "master", created_at: "2021-10-12 23:24:39.515531000 +0000", updated_at: "2021-10-12 23:24:39.515531000 +0000">]> 

Create a credit card in the database for each owner
 Discover.credit_cards .create number:'234598761234', expirationdate
:'04-22'
  TRANSACTION (20.4ms)  BEGIN
  CreditCard Create (6.3ms)  INSERT INTO "credit_cards" ("number", "expirationdate", "owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", "234598761234"], ["expirationdate", "04-22"], ["owner_id", 1], ["created_at", "2021-10-12 23:46:40.195541"], ["updated_at", "2021-10-12 23:46:40.195541"]]
  TRANSACTION (2.1ms)  COMMIT
 => #<CreditCard id: 1, number: "234598761234", expirationdate: "04-22", owner: nil, owner_id: 1, created_at: "2021-10-12 23:46:40.195541000 +0000", updated_at: "2021-10-12 23:46:40.195541000 +0000"> 

Add two more credit cards to one of the owners
Stretch Challenge
Add a credit limit to each card
Find the total credit extended to the owner with multiple credit cards