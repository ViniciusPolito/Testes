# frozen_string_literal: true

class LoginPage
    include Capybara::DSL
    
    def visit_page
        visit 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
    end

    def set_email(email)
        find('input[id=email]').set email
    end

    def alert_message_txt
        find('#center_column > div.alert.alert-danger > ol > li').text
    end
end
