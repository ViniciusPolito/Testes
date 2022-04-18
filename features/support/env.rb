require 'capybara'
require 'capybara/cucumber'
require 'capybara/selenium/driver'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end