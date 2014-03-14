class Vacina < ActiveRecord::Base
  belongs_to :tipo_vacina
  belongs_to :medicamento
  belongs_to :animal
end
