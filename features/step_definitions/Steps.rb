###############################################################################################
#[ Métodos When ]##############################################################################

Quando("eu acessar o site do banco Neon") do 
  @index = NeonUrl.new
  @index.load  
end                                                                           
                                                                              
Quando("eu clicar no link {string}") do |string|                              
  click_link(string) 
end                                                                           
                                                                              
Quando("eu clicar na pergunta {string}") do |string|
  @pergunta = NeonElements.new
  @pergunta.escolherPergunta
end

Quando("eu passar o mouse em cima de {string}") do |string|
  @state = NeonElements.new
  @state.statusAtivacaoCartao
end

###############################################################################################
#[ Métodos Then ]##############################################################################
                                                                              
Então("eu verei a resposta da pergunta") do |respostaEsperada|
  @resposta = NeonAsserts.new
  assert_text(@resposta.respostaObtidaValidar, respostaEsperada)    
end

Então("eu verei o status {string} do serviço de ativação de cartão") do |status_active_card|
  @stateService = NeonAsserts.new
  @stateService.statusServiceOk(status_active_card)

  if (@stateService.statusServiceOk(status_active_card) == true)
    puts("Serviço de ativação disponível!")
  else
    puts("Serviço de ativação indisponível!")
  end

end