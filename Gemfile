source 'https://rubygems.org'

ruby "2.2.2"

# Assets get auto-pre-compiled
gem 'rails_12factor'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Bootstrap Gem
gem 'bootstrap-sass'
# Use postgresql as the database for Active Record
gem 'pg'
# Use bcrypt for password hash
gem 'bcrypt'
# Seeds the database with fake users.
gem 'faker'
# For pagination
gem 'will_paginate'
gem 'bootstrap-will_paginate'
# CDN Cloudinary 
gem 'cloudinary'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'ruby-progressbar', '~> 1.7.5'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Use jquery ui 
gem 'jquery-ui-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Vimeo Gem for Paradox Parkway videos
gem 'vimeo'

gem 'mail_form'

gem 'simple_form'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :production do
  gem 'puma'
end
group :development, :test do
  
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  gem 'minitest-reporters'
  gem 'mini_backtrace',     '0.1.3'
  #gem 'guard-minitest',     '2.3.1'
end
