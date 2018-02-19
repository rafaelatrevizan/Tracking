
class LoginPage < SitePrism::Page
    element :btnContinuar, :xpath, '//span[contains(text(),"Continuar")]'

    def doLogin 
        $URL = "https://spa-pfx-ib-pfx-pre.appls.cmpn.paas.gsnetcloud.corp/login"
        visit $URL
    end

    def click_menu(opcao)
        all("li").each do |item|
            if item.text.downcase == opcao.downcase
                scroll_to(item)
                item.click
                break
            end
        end
    end

    def scroll_to(element)
        script = <<-JS
          arguments[0].scrollIntoView(false);
        JS
        Capybara.current_session.driver.browser.execute_script(script, element.native)
        page.execute_script "window.scrollBy(0,100)"
    end


end
