class Pesagem < ActiveRecord::Base
  validates_presence_of :peso, :data, :animal_id, message:"Campo Obrigatório."
  validates_numericality_of :peso, message:"Valor númerio."
  belongs_to :animal
  
  scope :por_animal, ->(animal_id) {where(:animal_id => animal_id)}
end
