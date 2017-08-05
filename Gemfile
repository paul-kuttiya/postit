source 'http://rubygems.org'
ruby '2.2.7'

gem 'rails', '5.1.0'
gem 'pg', '0.20'
gem 'bootstrap_form'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'sass-rails'
gem 'uglifier'
gem 'bcrypt'
gem 'bootswatch-rails'
gem 'font-awesome-rails'
gem 'gemcutter', '~> 0.7.1'
gem 'voteable_pkuttiya'
gem 'sidekiq', '4.2.10'
gem 'faker'
gem 'fabrication'
gem 'haml'
gem 'jquery-rails'
gem 'turbolinks'

group :doc do
  gem 'sdoc', require: false
end

group :development do
  gem "awesome_print"
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'foreman'
  gem 'letter_opener'
  gem 'thin'
  gem 'guard'
  gem "rack-livereload"
  gem 'guard-livereload'
end

group :development, :test do
  gem 'pry'
  gem 'pry-nav'
  gem 'rspec-rails', '~> 3.5'
end

group :test do
  gem 'capybara'
  gem 'capybara-email'
  gem 'chromedriver-helper'
  gem 'database_cleaner', '1.4.1'
  gem 'launchy'
  # gem 'selenium-webdriver'
  gem 'shoulda-matchers', '2.7.0'
  gem 'vcr', '3.0.3'
  gem 'webmock'
  gem 'capybara-webkit'
end

group :development, :production do
  gem 'puma'
end

group :production do
  gem 'rails_12factor'
end
