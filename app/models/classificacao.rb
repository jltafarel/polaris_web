class Classificacao < ActiveRecord::Base
  validates_presence_of :classificao, message: "Campo Obrigatório."
  validates_uniqueness_of :classificao, :case_sensitive=>false, message: "Campo Obrigatório."
end
