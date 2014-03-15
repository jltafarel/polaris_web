class TipoExame < ActiveRecord::Base
  validates_presence_of :tipo_exame, message:"Campo Obrigatório."
  validates_uniqueness_of :tipo_exame, :case_sesitive=>false, message:"Tipo já existe."
end
