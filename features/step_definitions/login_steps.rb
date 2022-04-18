# frozen_string_literal: true
  Dado('que eu acesso à página de login') do
    @login_page.visit_page
  end
  
  Quando('eu faço login com {string} e {string}') do |email, senha|
    @login_page.set_email(email)
    find('#passwd').set senha
    find('#SubmitLogin').click
  end
  
  Então('devo ser autenticado com sucesso') do
    @my_account = find('.page-heading').text
    expect(@my_account).to have_text 'MY ACCOUNT'
  end

  Quando('eu insiro as minhas "{string}"') do |credenciais|
    file = YAML.load_file(File.join(Dir.pwd,'features\support\fixtures\login_correto.yaml'))
    dados = file[credenciais]
    steps %{
      Quando eu faço login com "#{dados['email']}" e "#{dados['senha']}"
    }
  end 

  Então('devo ver a mensagem "{string}"') do |mensagem|
    @alert_message = @login_page.alert_message_txt
    expect(@alert_message).to have_content mensagem
  end