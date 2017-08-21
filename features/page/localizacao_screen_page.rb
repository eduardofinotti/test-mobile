# Spetas da pagina de encontrar localização do oficial de justiça
class LocalizacaoScreenPage
  
  attr_accessor :button_estou_aqui
  
  def initialize(button_estou_aqui)
    @button_estou_aqui = button_estou_aqui
  end

  def clickEstouAqui
    @button_estou_aqui.click
  end  
  
end