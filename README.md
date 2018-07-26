# Sinatra Expense Tracker

A simple Sinatra-powered web application created to save and track expenses.

This app could be used for:
* Tracking department expenses during a film shoot
* Following spending habits during vacation
* Storing tax-deductible spending independent contractor or LLC's Schedule C form
* Saving copies of spending submitted for reimbursement to an employer

This project was created as part of the [Flatiron School's Online Web Developer program](https://flatiron-school.com).

For more information about how the project was created, visit [my blog](https://kreopelle.github.io/embrace_the_process_my_sinatra_project).

## Install Instructions

Visit [Sinatra Expense Tracker](https://sinatra-expense-tracker.herokuapp.com/) to begin using the app.

Alternatively, clone this repo, run `bundle install`, `rake db:migrate`, and then run `shotgun`.

For added security when cloning the repo, generate your own session secret:

1. Comment out the current session_secret in the Application Controller and un-comment the `ENV.fetch('SESSION_SECRET')`.
2. Create a new .env file by running `touch .env` in your terminal
3. Use the [session_secret_generator gem](https://github.com/DakotaLMartinez/session_secret_generator), included in this project's Gemfile, by running `generate_secret` in the terminal.
4. Copy the secret from your terminal output and paste into your `.env` file locally. It should look something like this in your .env file:

`SESSION_SECRET=8ad90be1a5a9aaaf04a0a99d8efb42c825f16b8fef603f65b600c91d66a17bdd520099130ed70669409a524a97c8f62e9434a0ad102624f9bcff0832e3c2f568`

**NOTE** Don't use this secret!!! The secret you use should be kept private and out of version control or anywhere else publicly accessible.

If you'd like to learn more about securing and deploying heroku apps, visit the [Sinatra Heroku Demo App](https://github.com/dakotalmartinez/sinatra-heroku-demo).

## Contributors Guide

Bug reports and pull requests are welcome on GitHub at https://github.com/kreopelle/asana_cli_gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Code of Conduct

Everyone interacting in the Sinatra Expense Tracker's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/kreopelle/sinatra_expense_tracker/blob/master/CODE_OF_CONDUCT.md).

## License

The app is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
