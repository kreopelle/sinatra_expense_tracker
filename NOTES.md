TO DO:
[X] Build an MVC Sinatra Application
[X] Use ActiveRecord with Sinatra
[X] Use Multiple Models
[X] Use at least one has_many relationship on a User model and one belongs_to relationship on another model
[X] Sign up users
[X] Data validation for signup
[X] Log in users
[X] Data validation for login
[X] Log out users
[X] Users cannot modify content created by other users
[X] Can create an expense that belongs to the user.
[X] Data validation for expense creation
[X] Can read an expense that belongs to the user.
[X] Can update an expense that belongs to the user.
[X] Data validation for expense modification
[X] Can destroy an expense that belongs to the user.
[X] User's expenses can be edited or deleted only by that user
[X] Add spec.md file from project page & check boxes
[X] Write README.md
  [X] short description
  [X] install instructions
  [X] contributor's guide
  [X] link to license

ASSETS:
[X] Github repository
[ ] Blog post
[ ] Video Walkthrough
[X] 30 Minute Coding Session

SCHEMA:
a user has many expenses
an expense belongs to a user

a user has:
username
name --> started with this, but eventually took it out. next time will probably use the combination of a name to greet the user and an email / password combination to log in
email
password

an expense has:
vendor
description
date
total
payment method --> started with this, but eventually took it out. next time will want a payment method class that has set options that need to be selected with radio buttons
user_id

FUTURE EXPANSION IDEAS:
*** would like to have a view where you can view expenses by department (view all expenses in a given department)
*** would like to have the option to upload a picture of the receipt
