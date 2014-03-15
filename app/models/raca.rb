class Raca < ActiveRecord::Base
  validates_presence_of :raca, message: "Campo Obrigatório."
  validates_uniqueness_of :raca, :case_sensitive=>false, message: "Raça já Existe."   
end
