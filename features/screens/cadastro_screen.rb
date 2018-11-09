require_relative '../screens/base_screen.rb'

class CadastroScreen

  def initialize
    @base= BaseScreen.new
  end
  
  def campo_nome
    '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText'
  end

  def campo_email
    '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.EditText'
  end

  def check_tipo
    '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.TextView'
  end

  def botao_enviar
    '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[8]'
  end
end