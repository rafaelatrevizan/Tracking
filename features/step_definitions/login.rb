Dado("que esteja na pagina inicial do Portal") do
    $tracking = TrackingPage.new
    $login = LoginPage.new
    $login.doLogin
end
  
  Quando("efetuar o login com agencia e conta validos") do
    fill_in "loginAgencia", :with => "4641"
    fill_in "loginConta", :with => "130003727"
    $login.btnContinuar.click    
    fill_in "loginUser", :with => "banespa"
    fill_in "loginPass", :with => "258369"
    click_button('Entrar')
  end
  
  Então("apresentara o Portal de cambio") do
    assert_text('Seja bem vindo ao Portal de Negócios Internacionais do Santander Brasil.')
  end

  Então(/clico no Menu "([^"]*)" e no sub-menu "([^"]*)"$/) do |menu, subMenu|    
    $login.click_menu(menu)
    $login.click_menu(subMenu)
  end                                                                            

