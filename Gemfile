source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.2'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
# https://github.com/metaskills/less-rails/issues/122
gem "less-rails", github: "metaskills/less-rails", branch: "rails5", ref: "ce747da"
gem "twitter-bootstrap-rails", '~> 3.2'
gem "jquery-rails"
gem "haml"
gem "haml-rails"
gem "autoprefixer-rails"
gem "turbolinks"
gem "uglifier"
gem "therubyracer", platforms: :ruby
gem "interactor"
gem "phonelib"
gem "rails-i18n"

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
end

group :test do
  gem "rails-controller-testing"
  gem "rspec-rails"
  gem "simplecov"
  gem "factory_girl_rails"
end
