#language: pt

Funcionalidade: A partir do site do Banco Neon www.neon.com.br valide o texto da resposta da pergunta: “A Neon é só um cartão?” dentro da página Perguntas.

@Perguntas
Cenario: Validar resposta da página Perguntas
Quando eu acessar o site do banco Neon
E eu clicar no link "Perguntas"
E eu clicar na pergunta "A Neon é só um cartão?"
Então eu verei a resposta da pergunta
"""
Não! Somos mais que um cartão, oferecemos uma conta digital. Muito mais simples, você movimenta sua conta e organiza a sua vida financeira direto no app =)
Não cobramos mensalidade e anuidade, não fazemos você pegar fila e não exigimos mil papéis para você abrir sua conta. Aqui é tudo bem mais simples!
"""

