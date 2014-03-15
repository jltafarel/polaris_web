class Exame < ActiveRecord::Base
  validates_presence_of :animal_id, :tipo_exame_id, :data, message:"Campo Obrigatório"
  belongs_to :tipo_exame
  belongs_to :animal
end
