source 'https://rubygems.org'
ruby '2.0.0'
#ruby-gemset=railstutorial_rails_4_0

gem 'rails', '4.0.5'
gem 'bootstrap-sass', '3.3.2'
gem 'sprockets', '2.12.3'
gem 'bcrypt-ruby', '3.1.2'



group :development do
  gem 'sqlite3', '1.3.8'
end
  #gem 'web-console', '3.0'
  gem 'sass-rails', '4.0.5'
  gem 'uglifier', '2.1.1'
  gem 'coffee-rails', '4.0.1'
  gem 'jquery-rails', '3.0.4'
  gem 'turbolinks', '1.1.1'
  gem 'jbuilder', '1.0.2'
  #gem 'i18n', '0.7.0'
  gem 'therubyracer'

group :development, :test do
  gem 'pry-rails'  # rails console(もしくは、rails c)でirbの代わりにpryを使われる
  gem 'pry-doc'    # methodを表示
  gem 'pry-byebug' # デバッグを実施(Ruby 2.0以降で動作する)
  gem 'pry-stack_explorer' # スタックをたどれる
end

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

=begin
group :test do
  gem 'sqlite3', '1.3.8'
end
=end

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end
