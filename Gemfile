source 'https://rubygems.org'

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

gem 'ember-rails', github: 'emberjs/ember-rails'
#gem 'ember-source', '~>1.0.0.rc1.1'

gem 'active_model_serializers', github: 'rails-api/active_model_serializers'

gem 'haml'

gem 'rack-cache'

gem 'rails-i18n'

gem 'acts-as-taggable-on', '~> 2.3.1'

gem 'devise', '2.2.3'

# OmniAuth
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
gem 'omniauth-linkedin-oauth2'
gem 'omniauth-openid'
gem 'omniauth-twitter'
gem 'omniauth-xing'

gem 'twitter', '4.6.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',     '~> 3.2.3'
  gem 'bootstrap-sass', '~> 2.3.0.1'
  gem 'coffee-rails',   '~> 3.2.1'
  gem 'uglifier',       '>= 1.0.3'
  gem 'therubyracer',   :require => 'v8'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

group :development, :test do
  # this does not work at all for me =/
  # find the following in the vendor/gems dir!
  # gem 'linecache19', '~>0.5.13'
  # gem 'ruby-debug19', '~>0.11.6', require: 'ruby-debug'
  # gem 'ruby-debug-ide19', '~>0.4.12'
  # gem 'ruby_core_source', '~>0.1.5'
  # /find
  # gem 'ruby-debug-base19x', '~>0.11.30.pre11', require: 'ruby-debug-base19', git: 'git://github.com/ruby-debug/ruby-debug-base19.git'
  # gem 'debugger-ruby_core_source', '~>1.1.4'
  gem 'debugger'
  gem "debugger-pry", :require => "debugger/pry"
end

group :development, :test do
  gem 'rspec', '~> 2.13.0'
  gem 'rspec-rails', '~> 2.13.0'
  gem 'simplecov', '0.7.1', require: false
end

group :test do
  gem 'guard-rspec', '~> 2.5.0'
  gem 'rb-inotify', '~> 0.9.0', require: false
  gem 'cucumber-rails', require: false
  gem 'guard-cucumber', require: false
  gem 'cucumber-rails-training-wheels', require: false
  gem 'cucumber-api-steps', :require => false, github: 'jayzes/cucumber-api-steps'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'rb-fsevent', require: false
  gem 'rb-fchange', require: false
  gem 'libnotify'
end
group :development do
  gem "coffee-script-redux-debugger", github: "JetBrains/coffee-script-redux-debugger", require: false
end

gem 'thin'