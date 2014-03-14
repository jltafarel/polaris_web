class CreatePermissoes < ActiveRecord::Migration
  def change
    create_table :permissoes do |t|
      t.string :permissao

      t.timestamps
    end
  end
end
