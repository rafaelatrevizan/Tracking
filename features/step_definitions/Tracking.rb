Então("apresentara a tela do Tracking") do
    assert_text('Acompanhe suas negociações')
end

Então("deverá ser exibido as abas Pesquisa por data e Pesquisa por número do comprovante") do
    assert_text('Pesquisa por data')
    assert_text('Pesquisa por número do comprovante')
end

Quando(/^clicar na aba "Pesquisa por data"$/) do
  $tracking.abaData.click
end

Então("deverá ser exibido os campos {string} e {string}") do |string, string2|
  should have_xpath('(//div[@class = "col-md-8"]/div/label)[1]')
  should have_xpath('(//div[@class = "col-md-8"]/div/label)[2]')

end

Quando(/^clicar na aba "Pesquisa por número do comprovante"$/) do
  $tracking.abaComprovante.click
end

Então("deverá ser exibido o campo {string} e o botão {string}") do |string, string2|
  should have_xpath('//label[@for = "contractNumber"]')
  
end

Quando("clicar no combo Tipo da operação") do
     $tracking.comboOperacao.click
  end
  
  Então("deverá ser exibido as opções") do |table|
    $tracking.ValidarOperacao(table)
  end

  Quando("clicar no combo Status da negociação") do
   $tracking.comboStatus.click
  end
  
  Então("deverá ser exibido a opção") do |table|        
    $tracking.ValidarStatus(table)
  end

  Então("devera ser exibido os botoes de data") do |table|
    $tracking.ValidarDatas(table)
  end