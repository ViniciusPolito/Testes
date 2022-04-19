require 'capybara'
require 'capybara/cucumber'
require 'capybara/selenium/driver'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_driver = :selenium_chrome_headless
end
