source 'http://rubygems.org'

gem 'sinatra'
gem 'activerecord', '~> 4.2', '>= 4.2.6', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'pg', '0.20'
gem 'rake'
gem 'require_all'
gem 'thin'
gem 'bcrypt'
gem 'rails_12factor'
gem 'foreman'
gem 'session_secret_generator'

group :development do
  gem 'sqlite3'
  gem 'shotgun'
  gem 'pry'
  gem "tux"
  gem 'dotenv'
end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
end
