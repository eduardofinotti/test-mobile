class GpsDesativadoScreenPage
  
  attr_accessor :mensagem_gps_desativado
  
  def initialize(mensagem_gps_desativado)
    @mensagem_gps_desativado = mensagem_gps_desativado
  end

  def getMensagemGSPDesativado
    @mensagem_gps_desativado.text
  end  
 
end