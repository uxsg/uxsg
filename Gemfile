source "https://rubygems.org"

ruby "2.1.2"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "4.1.1"

# Use postgresql as the database for Active Record
gem "pg"

gem "sorcery"

gem "rails_admin"

# Detect mobile browser agents
gem "mobile-fu"

gem "slim-rails",   "~> 2.1.4" # Use Slim for HTML templates
gem "sass-rails",   "~> 4.0.3" # Use SCSS for stylesheets
gem "uglifier",     ">= 1.3.0" # Use Uglifier as compressor for JavaScript assets
gem "coffee-rails", "~> 4.0.0" # Use CoffeeScript for .js.coffee assets and views

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem "jquery-rails"
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem "turbolinks"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.0"

gem "foundation-rails"

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem "sdoc", "~> 0.4.0"
end

group :production, :staging do
  gem "rails_12factor"
end

group :development do
  gem "awesome_print"
  gem "better_errors"
  gem "binding_of_caller"
  gem "quiet_assets"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
end

group :development, :test do
  gem "rspec-rails", "~> 3.0"
end

group :test do
  gem "capybara", "~> 2.3"
  gem "database_cleaner", "~> 1.2.0"
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
gem "unicorn"

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
