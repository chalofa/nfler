# Code coverage http://bit.ly/wVQRUl
require 'simplecov'
SimpleCov.start 'rails'

require 'rubygems'
require 'bundler/setup'

require 'nfler'

Dir[File.join(File.dirname(__FILE__), 'support', '**', '*.rb')].each {|f| require f}

#RSpec.configure do |config|
#end
