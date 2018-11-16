Dado(/^preencher os capos de cadastro$/) do
  # step 'subir device'
  @nome_cadastro = Faker::Name.name
  @email = Faker::Internet.email

  @cadastro = CadastroScreen.new
  @actions = BaseScreen.new
  
  #@actions.wait_for_xpath(@cadastro.campo_nome)
  @actions.fill_text_field(@cadastro.campo_nome, @nome_cadastro)
  
  #@actions.wait_for_xpath(@cadastro.campo_email)
  @actions.fill_text_field(@cadastro.campo_email, @email)

  #@actions.wait_for_xpath(@cadastro.check_tipo)
  @actions.click_xpath(@cadastro.check_tipo)
end

Quando(/^efetuar o cadastro$/) do
  scroll_to_exact("ENVIAR")
  #@actions.wait_for_xpath(@cadastro.botao_enviar)
  @actions.click_xpath(@cadastro.botao_enviar)
end

Então(/^validar os dados do usuario cadastrado$/) do
  @driver.wait_true(20) do
    @driver.exists { driver.find_element(id:'alertTitle') }
  end
end