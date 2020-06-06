#================Classe Cadastro Sreen====================================#
class Cadastro <Appium::Driver
  #===================OBJETOS SCREEN=================================#
  def initialize
    set_wait(5)
    @btn_next = 'NEXT'
    @btn_done = 'DONE'
    @btn_skipe = 'SKIP'
    @btn_iAmNew = 'I AM NEW'
    @btn_createAccount = 'CREATE ACCOUNT'
    @btn_submitCode = 'SUBMIT CODE'
    @txt_categoria = 'Categories'
    @txt_popular = 'Popular'
    @txt_loading = 'Loading'
    @txt_creatAccount = 'Create Account'
    @txt_or = 'or'
    @btn_signFacebook = 'SIGN UP WITH FACEBOOK'
    @btn_signGoogle = 'SIGN UP WITH GOOGLE'
  end

  #=====================METODOS=======================================#
  def clicaNext
    (0..2).each { |e|
      text(@btn_next).click
    }
    text(@btn_done).click
  end

  def clicaSkip
    text(@btn_skipe).click
  end

  def clicaIAmNew
    text(@btn_iAmNew).click
  end

  def validaIAmNew
    text(@btn_iAmNew).displayed?
  end

  def validaDirecionamentoCrateAccount
    text(@txt_creatAccount).displayed?
  end

  def validaTelaCadastro
    text(@txt_creatAccount).displayed?
    ele_index("android.widget.EditText",1).text.eql? 'E-mail'
    ele_index("android.widget.EditText",2).text.eql? 'Phone number'
    ele_index("android.widget.EditText",3).text.eql? 'Password'
    text(@btn_createAccount).displayed?
    text(@txt_or).displayed?
    text(@btn_signFacebook).displayed?
    text(@btn_signGoogle).displayed?
  end

  def preecherCadastro
    ele_index("android.widget.EditText",1).send_keys('teste@gmail.com')
    ele_index("android.widget.EditText",2).send_keys('11999999999')
    ele_index("android.widget.EditText",3).send_keys('1234')
  end

  def clicaCriarConta
    text(@btn_createAccount).click
  end

  def preecherPim
    i = 4
    contador = 0

    (0..3).each { |e|
      while ele_index("android.widget.TextView", i).text.eql? '2' and contador <= 3
        contador = contador + 1
      end
      contador = 0
      ele_index("android.widget.TextView", i).click
      i = i + 1
    }

    text(@btn_submitCode).click
  end

  def validaHomeLogada
    text(@txt_categoria).displayed?
    text(@txt_popular).displayed?
  end

end