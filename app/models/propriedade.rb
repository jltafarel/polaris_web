class Propriedade < ActiveRecord::Base
  validates_presence_of :nome, message:"Campo Obrigatório."
  validates_uniqueness_of :nome, :case_sensitive=>false, message: "Nome já existe."  
end
