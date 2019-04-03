class NeonElements < SitePrism::Page

    element :question, 'body > main > article > div > div > ul:nth-child(12) > li:nth-child(3) > label > h4'

    element :active_card, 'body > section > main > div > section > div > div:nth-child(13) > div > p'                          
    
    def escolherPergunta
        question.click()
    end

    def statusAtivacaoCartao
        active_card.hover()
    end
  
end