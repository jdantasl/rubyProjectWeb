require 'rspec'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'webdrivers'
require 'site_prism'
require_relative 'helper.rb'

World(Helper)

Capybara.configure do |config|    
    config.default_driver = :selenium
    config.default_max_wait_time = 10
end

RSpec.configure do |config|
    config.expect_with :rspec do |c|
    c.syntax = :should
    end
end