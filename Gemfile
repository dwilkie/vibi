source "https://rubygems.org"
ruby "2.0.0"

gem "adhearsion",        :git => "git://github.com/adhearsion/adhearsion.git", :branch => "develop"
#gem "punchblock",        :git => "git://github.com/adhearsion/punchblock.git", :branch => "develop"
gem "adhearsion-twilio", :git => "git://github.com/dwilkie/adhearsion-twilio"
#gem "adhearsion-twilio", :path => "/home/dave/work/contrib/adhearsion-twilio"

#
# Here are some example plugins you might like to use. Simply
# uncomment them and run `bundle install`.
#

# gem 'adhearsion-asterisk'
# gem 'adhearsion-rails'
# gem 'adhearsion-activerecord'
# gem 'adhearsion-ldap'
# gem 'adhearsion-xmpp'
# gem 'adhearsion-drb'

group :development do
  gem 'foreman'
  gem 'pry'
end

group :development, :test do
  gem 'rspec'
end

group :test do
  gem 'vcr'
  gem 'webmock'
  gem 'rack-test'
end
