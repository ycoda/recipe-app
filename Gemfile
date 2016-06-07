source 'https://rubygems.org'
ruby '2.0.0'


gem 'rails', '4.0.5'
gem 'bootstrap-sass', '3.3.2.0'
gem 'sprockets', '2.11.0'
gem 'bcrypt-ruby', '3.1.2'
gem 'faker', '1.1.2'
gem 'will_paginate', '3.0.4'
gem 'bootstrap-will_paginate', '0.0.9'
gem 'carrierwave'



group :development, :test do
  # gem 'sqlite3', '1.3.8'
  gem 'sqlite3', '1.3.10'

  gem 'rspec-rails', '2.13.1'
  #gem 'cucumber-rails', '1.4.0', require: :false
  #gem 'therubyracer', platforms: :ruby
  # # The following optional lines are part of the advanced setup.
  gem 'guard', '2.6.1'
  gem 'guard-rspec', '2.5.0'
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess', '0.5.9'

  gem 'pry-rails'
  gem 'pry-byebug' # デバッグを実施(Ruby 2.0以降で動作する)
  gem 'pry-stack_explorer' # スタックをたどれる
  # pryの入出力に色付け
  gem 'pry-coolline'
  gem 'awesome_print'
  ###
  gem 'hirb'
  gem 'hirb-unicode'
  gem 'better_errors'
  gem 'binding_of_caller'
  #gem 'rubocop' 使えない。多数のgemのバージョンアップが必要になる。
  #gem 'rubocop-rspec'
end

group :test do
# ブラウザ上でJavaScriptを利用する機能をCapybaraでテストできるようにします。
  # gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  gem 'factory_girl_rails', '4.2.1'

  gem 'database_cleaner', github: 'bmabey/database_cleaner'
  # Uncomment this line on OS X.
  # gem 'growl', '1.0.3'

  # Uncomment these lines on Linux.
  # 下記はGaurdに対するgem
  gem 'libnotify', '0.8.0'

  # Uncomment these lines on Windows.
  # gem 'rb-notifu', '0.0.4'
  # gem 'win32console', '1.3.2'
  # gem 'wdm', '0.1.0'
end

gem 'sass-rails', '4.0.5'
gem 'uglifier', '2.1.1'
gem 'coffee-rails', '4.0.1'
gem 'jquery-rails', '3.0.4'
gem 'turbolinks', '1.1.1'
gem 'jbuilder', '1.0.2'
gem 'therubyracer', platforms: :ruby

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end
