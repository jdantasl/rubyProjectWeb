#language: pt

Funcionalidade: Acessar o site www.neon.com.br e na pagina de status validar que o serviço (Ativação de Cartão) está funcionando normalmente.

@StatusAtivarCartao
Cenario: Validar serviço Ativação de Cartão
Quando eu acessar o site do banco Neon
E eu clicar no link "Status"
E eu passar o mouse em cima de "Ativação de cartão"
Então eu verei o status "Funcionando normalmente" do serviço de ativação de cartão
