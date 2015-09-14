source "https://rubygems.org"
ruby "2.2.2"

gem "sinatra"
gem "activerecord"
gem 'sinatra-activerecord'
gem "rake"
require 'yaml'

group :development, :test do
  gem "sqlite3"
  gem "sinatra-reloader"
end

group :development do
  gem 'capistrano', require: false
  gem 'capistrano-rbenv'
  gem 'capistrano-bundler'
end
