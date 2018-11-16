# adicionar os requires: 
require 'appium_lib' 
require 'selenium-webdriver'
require 'pry'
require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'appium_capybara'
require 'faker'
require 'site_prism'
require 'capybara/dsl'

## ============================= -- RODAR NO DEVICE --  ====================================================
#Setar o caminho do arquivo devices.yaml 
# $device = 'samsung' #Setar Device
# $base_devices = YAML.load_file('./config/devices.yaml')['devices'][$device]

## ============================= -- RODAR NO EMULADOR --  ====================================================
# #Setar o caminho do arquivo emulators.yaml 
# $emulators = 'Nexus5' #Setar Emulador
# desired_capabilities = YAML.load_file('./config/emulators.yaml')['emulators'][$emulators]

# # #Executar o Driver Appium:
# Appium::Driver.new(desired_capabilities, true)
# Appium.promote_appium_methods Object


## ============================= -- RODAR NO SAUCE --  ====================================================
desired_capabilities = {
    caps: {
        testobject_api_key: '546919B06D504F1A9DA9012A282E9038',
        testobject_app_id: '1',
        platformName: 'Android',
        # supply `platformVersion` without `deviceName` to get any available device with that version dynamically
        #platformVersion: '7', # Optional
        # deviceName: 'Google Pixel', # Optional
        testobject_suite_name: 'Default Appium Suite',
        testobject_test_name: 'Default Appium Test - POC',
        noReset: 'false',
        testobject_cache_device: 'false',
        testobject_session_creation_timeout: '900000',
        appiumVersion: '1.9.1'
    },
    appium_lib: {
        # server_url: 'https://eu1.appium.testobject.com/wd/hub',
        server_url: 'https://us1.appium.testobject.com/wd/hub',  # your device is located in the US ? , then uncomment this line and remove the previous one.
        wait: 10
 }
}
# Start the driver
@driver = Appium::Driver.new(desired_capabilities, true).start_driver
Appium.promote_appium_methods Object