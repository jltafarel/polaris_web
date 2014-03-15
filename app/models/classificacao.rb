class Classificacao < ActiveRecord::Base
  validates_presence_of :classificacao, message: "Campo Obrigatório."
  validates_uniqueness_of :classificacao, :case_sensitive=>false, message: "Campo Obrigatório"
end
