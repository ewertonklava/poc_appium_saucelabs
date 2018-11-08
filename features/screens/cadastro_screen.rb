require_relative '../screens/base_screen.rb'

# class CadastroScreen < BaseScreen
# class CadastroScreen
#   def elementos_do_cadastro
#     {
#     nome_user: 'android.widget.EditText'
#     }
#     # element :nome_user, :xpath,  "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText"
#     # element :email_user, :xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.EditText"
    
#   end

#   def criar_usuario(nome_cadastro, email)
#     # send_keys_id [:nome_user], nome_user
#     # send_keys_id [:email_user], email_user
#     send_keys_id elementos_do_cadastro[element :nome_user]
#     send_keys_id elementos_do_cadastro[:email_user], email_user
#     # click_id elementos_do_login[:sign_in]
#   end

#  # element :btn_enviar, :xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[8]"   
# end

class CadastroScreen

  def initialize
    @base= BaseScreen.new
  end

  def campo_modelo_marca
    # @cadastro = BaseScreen.new
    @base.find_element(class:'android.widget.EditText')
  end

  def campo_ano
    @basic.find_element(id:'ano')
  end
end