source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.0.3.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3', '>= 4.3.3'
gem 'bulma-rails', '~> 0.8.0'
gem 'font-awesome-sass', '~> 5.12.0'
gem 'simple_form', '~> 5.0', '>= 5.0.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.2', '>= 4.2.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :development, :test do  
  gem 'pry-byebug', '~> 3.7'
  gem 'pry-rails', '~> 0.3.9'
  gem 'rspec-rails', '~> 3.9'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem "better_errors"
  gem "binding_of_caller"
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '~> 3.29'
  gem 'simplecov', '0.17.1', require: false
  gem 'simplecov-console', require: false
  gem 'factory_bot_rails'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
