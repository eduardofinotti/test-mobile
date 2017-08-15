class SemPermissaoLocalizacaoScreenPage
  
  attr_accessor :mensagem_sem_permissao_localizacao
  
  def initialize(mensagem_sem_permissao_localizacao)
    @mensagem_sem_permissao_localizacao = mensagem_sem_permissao_localizacao
  end

  def getMensageSemPermissaoLocalizacao
    @mensagem_sem_permissao_localizacao.text 
  end  
 
end