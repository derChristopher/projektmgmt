source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc


gem 'therubyracer'
gem 'less-rails', :git => 'https://github.com/suzan2go/less-rails.git', :branch => 'fix-nomethoderror-for-sprockets3'
gem 'twitter-bootstrap-rails'

gem 'angular-rails-templates'
gem 'google-webfonts-rails', '~> 0.0.4'

#https://devcenter.heroku.com/articles/getting-started-with-rails5
gem 'rails_12factor', group: :production

# https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server
gem 'puma'

#https://github.com/stve/bower
gem 'bower'

# https://github.com/Angelmmiguel/material_icons
gem 'material_icons'

# http://stackoverflow.com/questions/29709334/angular-rails-templates-just-not-working
gem 'sprockets', '2.12.3'

# https://rails-assets.org/
gem 'bundler', '>= 1.8.4'

# Gem for Google Visualr    http://googlevisualr.herokuapp.com/
gem "google_visualr", "~> 2.5.1"

source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap'
  gem 'rails-assets-angular'
  gem 'rails-assets-leaflet'
end

gem "foreman"
group :production, :staging do
  gem "rails_12factor"
  gem "rails_stdout_logging"
  gem "rails_serve_static_assets"
end

# https://devcenter.heroku.com/articles/ruby-support#injected-plugins
# gem 'rails_serve_static_assets'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end


ruby "2.2.3"
