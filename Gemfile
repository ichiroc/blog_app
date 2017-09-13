source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.3'
gem 'puma', '~> 3.10.0'
gem 'sass-rails', '~> 5.0.6'
gem 'uglifier', '~> 3.2.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2.2'
gem 'turbolinks', '~> 5.0.1'
gem 'jbuilder', '~> 2.7.0'

group :development, :test do
  gem 'byebug', "~> 9.1.0", platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13.0'
  gem 'selenium-webdriver', "~> 3.5.1"
end

group :development do
  gem 'web-console', '~> 3.5.1'
  gem 'listen', '~> 3.1.5', '< 3.2'
  gem 'spring', "~> 2.0.2"
  gem 'spring-watcher-listen', '~> 2.0.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'haml-rails', "~> 1.0.0"
gem 'kaminari', "~> 1.0.1"
gem 'simple_form', "~> 3.5.0"
gem 'jquery-rails', "~> 4.3.1"
gem 'bootstrap', '~> 4.0.0.beta'

group :development, :test do
  gem 'annotate', "~> 2.7.2"
  gem 'better_errors', "~> 2.3.0"
  gem 'binding_of_caller', "~> 0.7.2"
  gem 'capybara-webkit', "~> 1.14.0"
  gem 'database_cleaner', "~> 1.6.1"
  gem 'factory_girl_rails', "~> 4.8.0"
  gem 'faker', "~> 1.8.4"
  gem 'guard-rspec', "~> 4.7.3"
  gem 'launchy', "~> 2.4.3"
  gem 'letter_opener', "~> 1.4.1"
  gem 'pry-byebug', "~> 3.5.0"
  gem 'pry-doc', "~> 0.11.1"
  gem 'rspec-rails', "~> 3.6.1"
end

gem 'therubyracer', "~> 0.12.3"
gem 'less-rails', "~> 2.8.0"
gem 'acts-as-taggable-on', "~> 5.0.0"
gem 'font-awesome-rails', "~> 4.7.0.2"
gem 'github-markup', "~> 1.6.1", require: 'github/markup'
gem 'commonmarker', "~> 0.17.0"
gem 'select2-rails', "~> 4.0.3"
gem 'pg', "~> 0.21.0"
gem 'gretel', "~> 3.0.9"
gem 'carrierwave', "~> 1.1.0"
gem 'mini_magick', "~> 4.8.0"
