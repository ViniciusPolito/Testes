# frozen_string_literal: true

require 'base64'

Before do
    page.driver.browser.manage.window.maximize
    @login_page = LoginPage.new
end

After do |scenario| 
    #shot_file = page.save_screenshot('log/screenshot.png')
    #shot_b64 = Base64.encode64(File.open(shot_file, 'rb').read)
    #embed(shot_b64, 'image/png', 'Screenshot')
end
