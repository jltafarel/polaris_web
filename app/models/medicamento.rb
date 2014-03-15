class Medicamento < ActiveRecord::Base
  validates_presence_of :nome, :tipo_medicamento_id, message: "Campo Obrigatório"
  belongs_to :tipo_medicamento
end
