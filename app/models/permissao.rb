class Permissao < ActiveRecord::Base
  validates_presence_of :permissao, message:"Campo Obrigatório."
  validates_uniqueness_of :permissao, :case_sensitive=>false, message: "Permissão já existe."  
end
