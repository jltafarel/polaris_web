class Vacina < ActiveRecord::Base
  validates_presece_of :animal_id, :tipo_vacina_id, :medicamento_id, message:"Campo Obrigatório."
  
  belongs_to :tipo_vacina
  belongs_to :medicamento
  belongs_to :animal
end
