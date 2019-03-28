class NeonAsserts < SitePrism::Page
    
    element :respostaObtida, 'body > main > article > div > div > ul:nth-child(12) > li:nth-child(3) > div > div'
    
    def respostaObtidaValidar        
        respostaObtida.text        
        execute_script("arguments[0].scrollIntoView({block: 'center'});", respostaObtida)
    end

    def statusServiceOk(status_active_card)
        status_ok_tooltip = find("body > section > main > div > section > div > div:nth-child(13) > div")["data-tooltip-text"].should == "#{status_active_card}" 
    end  

end