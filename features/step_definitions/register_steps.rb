Dado('que eu acesso à página de acesso') do
    visit 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
  end
  
  Quando('eu registro meu email {string}') do |email|
    find('#email_create').set email
    find('#SubmitCreate').click
    sleep 3
  end

  Então('serei redirecionado para página de cadastro com meu email {string}') do |email2|
    sleep 3
    expect(page).to have_content email2
    sleep 3
  end

  Quando('eu registro as outras informações') do
    find('#customer_firstname').set 'BARPO'
    sleep 3
  end
  
  Então('o cadastro deve ser concluido') do
    pending # Write code here that turns the phrase above into concrete actions
  end