# frozen_string_literal: true

require 'base64'

Before do
    page.driver.browser.manage.window.maximize
    @login_page = LoginPage.new
end

After do |scenario| 
    if scenario.failed?
        page.save_screenshot('log/cenario_falhou.png')
    end
end
