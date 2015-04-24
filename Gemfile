source "https://rubygems.org"
ruby "2.2.1"

gem "adhearsion",        :git => "git://github.com/adhearsion/adhearsion.git", :branch => "develop"
gem "adhearsion-twilio", :path => "/home/dave/work/contrib/adhearsion-twilio"

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
