source 'https://rubygems.org'

ruby "2.0.0"
# gem 'rails', '4.0.0.beta1'
gem 'rails', '4.0.0.rc1'
gem 'bcrypt-ruby', '3.0.1'
gem 'faker', '1.0.1'
gem 'will_paginate'   			#, '3.0.3'
gem 'pg'
gem 'jquery-rails'
gem 'railties'
gem 'carmen-rails', :git => 'https://github.com/freerunningtechnologies/carmen-rails', :branch => 'rails4'  # country selecter
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'


# Paperclip bundle 
# gem 'paperclip'
gem "paperclip", :git => "git://github.com/thoughtbot/paperclip.git"
gem 'aws-sdk', '~> 1.5.7'



group :test, :development do
  gem 'rspec-rails', '2.10.0'
  gem 'guard-rspec'				#, '0.5.5'
  gem 'guard-spork'				#, '0.3.2'
  gem 'spork-rails', github: 'railstutorial/spork-rails'  #, branch: 'rails-4'
#  gem 'spork'						#, '0.9.0'

end

group :development do
#	gem 'annotate' 
	gem 'annotate', :git => 'git://github.com/jeremyolliver/annotate_models.git', :branch => 'rake_compatibility'
end

group :test do
  gem 'capybara', '1.1.2'
  gem 'factory_girl_rails' 								#, '1.4.0'
#  gem 'cucumber-rails', '1.2.1' #, require: false
  gem 'database_cleaner', '0.7.0'
end

group :production do
#  gem 'pg', '0.12.2'
end

# Gems used only for assets and not required
# in production environments by default.
  gem 'sass-rails',   '4.0.0.rc1'
  gem 'coffee-rails', '4.0.0.beta1'
  gem 'uglifier', '1.2.3'


