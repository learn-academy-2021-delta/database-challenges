# Banking Challenge
# Setup
# Create a new rails application and database
    rails new credit_cards -d postgresql -T
    rails db:create

# Create a model for owner
# An owner has a name and address, and can have multiple credit cards
    rails g model Owner name:string address:string 
    rails db:migrate

# Create a model for credit card
# A credit card has a number, an expiration date, and an owner
    rails g model CreditCard number:string expiration:string owner:string
    rails db:migrate

# forgot to add foreign key column -> perform migration
# foreign key format: tablename_id:integer
    terminal: rails g migration add_foreign_key_to_credit_cards
    db > migrate > file: add_column :credit_cards, :owners_id, :integer
    rails db:migrate

# Rename column from owners_id to owner_id
    rails g migration change_owners_id_to_owner_id
    rename_column :credit_cards, :owners_id, :owner_id
    rails db:migrate

# Challenges
    rails c
    
# Create three owners and save them in the database
    Owner.create name:'John', address:'555 Main St' 
    Owner.create name:'Rebecca', address:'123 Main St' 
    Owner.create name:'Peaches', address:'555 Main St' 

# Create a credit card in the database for each owner
    owner1 = Owner.first
    owner1.credit_cards.create number:'1111-2222-3333', expiration:'12/27'
    
    //removed the owner field....and it worked. really unsure why it's so unhappy with a string
    //Error: ActiveRecord::AssociationTypeMismatch (Owner(#13380) expected, got "John" which is an instance of String(#2740))


# Add two more credit cards to one of the owners

# Stretch Challenge
# Add a credit limit to each card

# Find the total credit extended to the owner with multiple credit cards

