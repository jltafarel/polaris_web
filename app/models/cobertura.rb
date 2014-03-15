class Cobertura < ActiveRecord::Base
  validates_presence_of :data, :animal_id, message: "Campo Obrigatório" 
  belongs_to :animal
end
