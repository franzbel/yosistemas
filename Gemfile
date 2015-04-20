source 'http://rubygems.org'
ruby "2.0.0"

# Bundle edge rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', group: [:development, :test]
gem 'pg', group: [:production]
gem 'aescrypt','>= 1.0.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'
gem 'recaptcha', :require => 'recaptcha/rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails','>= 3.0.4'
gem 'pusher'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks

#gems for files upload
gem 'paperclip','~> 3.0'
gem 'paperclip-dropbox', '~> 1.1.7'
gem "metric_fu", "~> 4.4.4"
gem 'kaminari' ,'>= 0.14.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'
#gem encrypt password in user register
gem "bcrypt-ruby", :require => "bcrypt"
group :development, :test do
  gem "rspec-rails", "~> 2.14.0"
  gem "factory_girl_rails", "~> 4.2.1"
end
group :test do
  gem "faker", "~> 1.1.2"
  gem "capybara", "~>2.1.0"
  gem "database_cleaner", "~> 1.1.0"
  gem "launchy", "~> 2.3.0"
  gem "selenium-webdriver", "~> 2.35.1"
end
group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem "nested_form"

gem 'bootstrap_form'


#gem "protected_attributes", "~> 1.0.5"

#habilitar esta gema para habilitar ajaxify
#gem 'ajaxify_rails'

gem 'rails_12factor', group: :production

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]