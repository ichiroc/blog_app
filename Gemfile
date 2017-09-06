source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.3'
gem 'sqlite3'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'haml-rails'
gem 'kaminari'
gem 'simple_form'
gem 'jquery-rails'
gem 'bootstrap', '~> 4.0.0.beta'
group :development, :test do
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'capybara-webkit'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'guard-rspec'
  gem 'launchy'
  gem 'letter_opener'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'rspec-rails'
end

gem 'therubyracer'
gem 'less-rails'
gem 'acts-as-taggable-on'
gem 'font-awesome-rails'
