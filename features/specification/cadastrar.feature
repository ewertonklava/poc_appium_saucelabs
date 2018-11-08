#language:pt
#utf-8
@cadastro
Funcionalidade: Validar cadastro
   Como usuario quero validar o cadastro do sistema

  @cadastrar_usuario
  Cenário: Validar triangulo equilatero
    Dado preencher os capos de cadastro
    Quando efetuar o cadastro
    Então validar os dados do usuario cadastrado

  # @triangulo_isosceles
  # Cenário: Validar triangulo isósceles
  #   Dado preencher os capos do triangulo com dois lados iguais
  #   Quando calcular os dados de entrada
  #   Então validar a saida do triangulo isósceles

  # @triangulo_escaleno
  # Cenário: Validar triangulo escaleno
  #   Dado preencher os capos do triangulo com todos os lados diferentes
  #   Quando calcular os dados de entrada
  #   Então validar a saida do triangulo escaleno    