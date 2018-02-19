class TrackingPage < SitePrism::Page
   element :comboOperacao, :xpath, '//span[contains(text(), "Todos")]'
   element :comboStatus, :xpath, '//span[contains(text(), "Selecione")]'
   element :abaData, :xpath, '//span[contains(text(), "Pesquisa por data")]'
   element :abaComprovante, :xpath, '//span[contains(text(), "Pesquisa por número do comprovante")]'
   
   
    def ValidarStatus (statusEsperado)
        statusEncontrado = find(:xpath,'(.//ul[contains(@class, "combo-list list-unstyled")])[2]').all(:xpath, ".//li")
        i = 0
        statusEsperado.hashes.each do |item|
            statusEncontrado[i].text.should == item["Status"]
            i += 1 
        end 
    end

    def ValidarOperacao (operacaoEsperado)
        operacaoEncontrado = find(:xpath,'(.//ul[contains(@class, "combo-list list-unstyled")])[1]').all(:xpath, ".//li")
        v = 0
        operacaoEsperado.hashes.each do |item|
            operacaoEncontrado[v].text.should == item["Operação"]
            v += 1 
        end 
    end

    def ValidarDatas (dataEsperado)
        j = 0
        dataEsperado.hashes.each do |item|
            find(:xpath,'//button[contains(text(), "'+ item["Data"] +'")]')
            j += 1 
        end 
    end
end