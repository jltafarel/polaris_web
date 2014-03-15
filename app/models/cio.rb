class Cio < ActiveRecord::Base
  validates_presence_of :animal_id, :cobertura_id, :data, message: "Campo Obrigatório."
  belongs_to :cobertura
  belongs_to :animal
end
