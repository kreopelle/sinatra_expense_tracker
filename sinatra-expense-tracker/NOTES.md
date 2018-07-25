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
[ ] Users cannot modify content created by other users
[ ] Can create an expense that belongs to a user.
[ ] Data validation for expense creation
[ ] Can read an expense that belongs to a user.
[ ] Can update an expense that belongs to a user.
[ ] Data validation for expense modification
[ ] Can destroy an expense that belongs to a user.
[ ] User's expenses can be edited or deleted only by that user
[ ] Add spec.md file from project page & check boxes
[ ] Write README.md
  [ ] short description
  [ ] install instructions
  [ ] contributor's guide
  [ ] link to license

ASSETS:
[ ] Github repository
[ ] Blog post
[ ] Video Walkthrough
[ ] 30 Minute Coding Session

SCHEMA:
a user has many expenses
an expense belongs to a user

a user has:
username
name
email
password

an expense has:
vendor
description
date
total
payment method
user_id

*** would like to have a view where you can view expenses by department (view all expenses in a given department)
*** would like to have the option to upload a picture of the receipt
*** drop first and last name columns
*** add error message for logout\
*** add radio buttons for accepted payment methods: Company card, cash, personal card, check
*** make sure that the totals always have two decimal points (add the zero)
