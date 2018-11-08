#O comando abaixo estou dando um require neste arquivo em todos os arquivos que termina em "_screen.rb".

Dir[File.join(File.dirname(__FILE__),'../screens/*_screen.rb')].each { |file| require file }

# Modulos para chamar as classes instanciadas
module Screens

#O método serve para que toda vez que chamar esse método ele vai verificar se a classe base foi instanciada,se sim ela não irá fazer nada ,se não ela irá instanciar a classe.
  def base
    @base ||= BaseScreen.new
  end
  
#O método serve para que toda vez que chamar esse método ele vai verificar se a classe HomeScreen foi instanciada,se sim ela não irá fazer nada, se não ela irá instanciar a classe.
  def cadastro
    @cadastro ||= CadastroScreen.new
  end
end