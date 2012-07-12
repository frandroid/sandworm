source 'https://rubygems.org'

gem 'rails', '3.2.6'
gem 'bcrypt-ruby', '3.0.1'
gem 'faker', '1.0.1'
gem 'will_paginate', '3.0.3'

group :development, :test do
  gem 'sqlite3'
end

group :assets do
  gem 'sass-rails',   '3.2.4'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '2.0.0'

group :test, :development do
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'spork'
end

group :test do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'cucumber-rails', '1.2.1', require: false
  gem 'database_cleaner', '0.7.0'
end

group :production do
  gem 'pg'
end