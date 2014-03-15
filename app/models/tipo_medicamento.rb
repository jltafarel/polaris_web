class TipoMedicamento < ActiveRecord::Base
  validates_presence_of :tipo_medicamento, message: "Campo obrigatório."
  validates_uniqueness_of :tipo_medicamento, :case_sensitive=>false, message: "Tipo já existente."

end
