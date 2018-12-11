# Avoid invalid byte sequence error for OpsWorks
Encoding.default_external = Encoding::UTF_8

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2.0'
gem 'config'
gem 'cancancan'
gem 'simple_form'
gem 'nested_form'
# gem 'doorkeeper'
gem 'carrierwave'
gem 'image_processing'
gem 'mini_magick'
gem 'piet'
gem 'piet-binary'
gem 'fog-aws'
gem 'typhoeus'
gem 'rack-user_agent'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootsnap'
gem 'browser'

# ruby
gem 'rest-client'

# login
gem 'devise'
gem 'devise_invitable'
gem 'omniauth'
gem 'omniauth-oauth2'
gem 'oauth2'

# db
gem 'mysql2'

# active record
gem 'enumerize'
gem 'kaminari'
gem 'friendly_id'
gem 'delayed_job_active_record'
gem 'ransack'
gem 'aasm'

# views
gem 'uglifier'
gem 'coffee-rails'
gem 'sassc-rails'
gem 'hamlit'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jbuilder'
gem 'font-awesome-rails'
gem 'rinku', '~> 1.7'

# seo
gem 'roboto'
gem 'meta-tags', require: 'meta_tags'
gem 'sitemap_generator'

# ops
gem 'lograge'

# ops
# gem 'bugsnag'

# opsworks
gem 'therubyracer', platforms: :ruby
gem 'whenever', require: false
gem 'dotenv-rails'
gem 'cosuka_opsworks', git: 'https://github.com/SonicGarden/cosuka_opsworks.git', branch: 'chef11'

# for backup
gem 'backup', github: 'sonicgarden/backup', branch: 'relax_dependencies_201705'

# image processing
gem 'fastimage'
gem 'image_optim'
gem 'image_optim_pack'

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails', '>=3.4.0'
  gem 'factory_bot_rails'
  gem 'hirb'
  gem 'hirb-unicode'
end

group :test do
  gem 'test-queue'
  gem 'rails-controller-testing'
  gem 'rspec-collection_matchers'
  gem 'rspec_junit_formatter'
  gem 'json_matchers'
  gem 'faker'
  gem 'email_spec'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  gem 'database_rewinder'
  gem 'simplecov', require: false
  gem 'webmock'
  gem 'vcr'
end

group :development do
  gem 'listen'
  gem 'puma'
  gem 'web-console'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'letter_opener'
  gem 'brakeman', require: false
end
