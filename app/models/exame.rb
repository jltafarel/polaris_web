class Exame < ActiveRecord::Base
  belongs_to :tipo_exame
  belongs_to :animal
end
