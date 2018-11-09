Dado(/^preencher os capos de cadastro$/) do
  # step 'subir device'
  @nome_cadastro = Faker::Name.name
  @email = Faker::Internet.email

  @cadastro = CadastroScreen.new
  @actions = BaseScreen.new
  
  @actions.wait_for_xpath(@cadastro.campo_nome)
  @actions.send_keys_xpath(@cadastro.campo_nome, @nome_cadastro)
  
  @actions.wait_for_xpath(@cadastro.campo_email)
  @actions.send_keys_xpath(@cadastro.campo_email, @email)

  @actions.wait_for_xpath(@cadastro.check_tipo)
  @actions.click_xpath(@cadastro.check_tipo)
end

Quando(/^efetuar o cadastro$/) do
  hide_keyboard
  @actions.wait_for_xpath(@cadastro.botao_enviar)
  @actions.click_xpath(@cadastro.botao_enviar)
end

Então(/^validar os dados do usuario cadastrado$/) do
  @driver.wait_true(5) do
    @driver.exists { driver.find_element(id:'alertTitle') }
  end
end

Então(/^subir device$/) do
  binding.pry
  driver.find_element(id:'cling_dismiss_longpress_info').click
  driver.find_element(xpath:'//android.widget.TextView[@content-desc="Apps"]').click
  scroll_to_exact("tdc_mobile_app")
  driver.find_element(id:'tdc_mobile_app').click
end