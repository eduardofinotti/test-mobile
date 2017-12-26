#language: pt
@login @funcionalidade_basica
Funcionalidade: Manter carros
  Eu como usuário quero manter meus carros para ter registro dos mesmos

  Cenário: Cadastrar carro
    Dado que estou na home da aplicação
    E clico em 'cadastro'
    E preencho todos os campos de cadastro de carro
    Quando clo em 'cadastrar'
    Então o carro é salvo e é exibido na lista