source "http://rubygems.org"

gem "rails", "~> 3.1.3"

# Declare your gem's dependencies in sunrise-aloha.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# jquery-rails is used by the dummy application
gem "jquery-rails"

group :development, :test do
  gem "database_cleaner"
  gem "capybara", "~> 1.1.2"
  gem "launchy"
  gem "therubyracer"
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end
