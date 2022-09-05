source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'
gem 'rails', '~> 7.0.3', '>= 7.0.3.1'
gem 'sprockets-rails'

gem 'importmap-rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'devise'
gem "cancan"
gem 'jbuilder'

gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', require: false
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'image_processing', '~> 1.2'

group :development, :test do
  gem 'database_cleaner'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 4.0.0.beta2'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
