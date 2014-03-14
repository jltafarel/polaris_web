class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :login
      t.string :senha
      t.references :permissao, index: true
      t.references :propriedade, index: true

      t.timestamps
    end
  end
end
