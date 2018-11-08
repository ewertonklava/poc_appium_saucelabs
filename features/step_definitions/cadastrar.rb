Dado(/^preencher os capos de cadastro$/) do
  @nome_cadastro = Faker::Name.name
  @email = Faker::Internet.email
  # @cadastro = CadastroScreen.new
  # @actions = BaseScreen.new
  # @actions.fill_text_field(@cadastro.campo_modelo_marca, @nome_cadastro)
  
  # driver.find_element(class:'android.widget.EditText'.first).send_keys(@nome)
  # driver.find_element(class:'android.widget.EditText').send_keys(@email)
  $driver.find_element(xpath:'/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText').send_keys(@nome_cadastro)
  $driver.find_element(xpath:'/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.EditText').send_keys(@email)
  $driver.find_element(xpath:'/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.TextView').click
end

Quando(/^efetuar o cadastro$/) do
  hide_keyboard
  $driver.find_element(xpath: '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[8]').click
end

Então(/^validar os dados do usuario cadastrado$/) do
  expect(driver.find_element(id:'alertTitle').text).to eq "Contato Salvo"
  $driver.find_element(id:'button1').click
end
