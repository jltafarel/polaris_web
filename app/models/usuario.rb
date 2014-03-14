class Usuario < ActiveRecord::Base
  belongs_to :permissao
  belongs_to :propriedade
end
