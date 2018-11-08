#executar o driver do appium
Before do
  driver.start_driver
  driver.find_element(id:'cling_dismiss_longpress_info').click
  driver.find_element(xpath:'//android.widget.TextView[@content-desc="Apps"]').click
  scroll_to_exact("tdc_mobile_app")
  driver.find_element(id:'tdc_mobile_app').click
end

#encerrar a sessão do driver appium
After do 
  driver.driver_quit 
end 
