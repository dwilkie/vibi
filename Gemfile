source "https://rubygems.org"

ruby '2.2.2'

gem "adhearsion",        :github => "adhearsion/adhearsion", :branch => "develop"
gem "adhearsion-twilio", :github => "dwilkie/adhearsion-twilio"

group :development do
  gem 'foreman'
end

group :development, :test do
  gem 'rspec'
end

group :test do
  gem 'vcr'
  gem 'webmock'
  gem 'rack-test'
end
