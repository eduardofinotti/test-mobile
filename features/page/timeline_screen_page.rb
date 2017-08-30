# Passos da página de timeline do oficial de justiça
class TimelineScreenPage
  
  attr_accessor :data_checkin, :numero_mandado, :endereco, :hora, :status_sinc
  
  def initialize(data_checkin, numero_mandado, endereco, hora, status_sinc)
    @data_checkin = data_checkin
    @numero_mandado = numero_mandado
    @endereco = endereco
    @hora = hora
    @status_sinc = status_sinc
  end
  
  def get_data
    @data_checkin.text
  end 

  def get_numero_mandado
    @numero_mandado.text
  end 

  def get_endereco
    @endereco.text
  end 

  def get_hora
    @hora.text
  end 

  def get_status_sinc
    @status_sinc.displayed?
  end 
 
end