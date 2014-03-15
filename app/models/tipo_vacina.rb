class TipoVacina < ActiveRecord::Base
  validates_presence_of :tipo_vacina, message: "Campo obrigatario." 
  validates_uniqueness_of :tipo_vacina, :case_sensitive=>false, message: "Tipo já existe."
end
