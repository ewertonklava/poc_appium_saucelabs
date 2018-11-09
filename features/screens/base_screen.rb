class BaseScreen

  def fill_text_field(element, text, time_out=60)
    @driver.find_element(:xpath, element).click
    @driver.find_element(:xpath, element).send_keys(text)
    @driver.hide_keyboard
  rescue => e
    raise "Erro ao preencher campo #{element}.\nErro: #{e.message}"
  end

#Método para clicar um elemento mapeado na tela por xpath.
  def click_xpath(xpath)
    @driver.find_element(:xpath, xpath).click
  end

end
