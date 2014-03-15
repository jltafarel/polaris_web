class Animal < ActiveRecord::Base
  validates_presence_of :classificacao_id, :raca_id, :propriedade_id, :identificacao, message:"Campo Obrigatório"
  validates_numericality_of :identificacao, message:"O valor deve ser numerico."
  validates_uniqueness_of :identificacao, message:"Identificação já existe."
  belongs_to :raca
  belongs_to :propriedade
  belongs_to :classificacao
end
