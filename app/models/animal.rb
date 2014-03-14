class Animal < ActiveRecord::Base
  belongs_to :raca
  belongs_to :propriedade
  belongs_to :classificacao
end
