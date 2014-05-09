class AddColumnPropriedadeToUser < ActiveRecord::Migration
  def change
    add_reference :users, :propriedade, index: true
  end
end
