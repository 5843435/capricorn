source 'https://rubygems.org'

gem 'seed_dump'

# 画像アップロード用
gem 'paperclip'

# 検索用
gem 'ransack'
gem 'rails-i18n'

# 論理削除gem
gem 'kakurenbo'

#gem 'rakuten_web_service'
ruby '2.2.2'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
# Use sqlite3 as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
gem 'devise'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'sqlite3'
  gem 'sqlite3-ruby', :require => 'sqlite3'
  
  gem 'pry-rails'  # rails console(もしくは、rails c)でirbの代わりにpryを使われる
  gem 'pry-doc'    # methodを表示
  gem 'pry-byebug' # デバッグを実施(Ruby 2.0以降で動作する)
  gem 'pry-stack_explorer' # スタックをたどれる

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  
  # test
  #gem 'rspec-rails', '3.0.2'
  gem 'rspec-rails', '~> 3.1'
  gem 'shoulda-matchers', '~> 2.6.0'
  gem 'factory_girl_rails', '~> 4.4.1'
  gem 'capybara', '~> 2.2.1'
  gem 'poltergeist', '~> 1.5.0'
  gem 'database_cleaner', '~> 1.2.0'
  
  #バッチ用
  gem 'whenever', :require => false

  gem 'hirb'         # モデルの出力結果を表形式で表示するGem
  gem 'hirb-unicode' # 日本語などマルチバイト文字の出力時の出力結果のずれに対応

  #画面遷移時のjquery動作安定のため
  gem 'jquery-turbolinks'
end

