class SemPermissaoScreenPage
  
  attr_accessor :mensagem_sem_permissao
  
  def initialize(mensagem_sem_permissao)
    @mensagem_sem_permissao = mensagem_sem_permissao
  end

  def getMensageSemPermissaoLocalizacao
    @mensagem_sem_permissao.text 
  end  
 
end