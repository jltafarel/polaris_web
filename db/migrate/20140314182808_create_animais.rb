class CreateAnimais < ActiveRecord::Migration
  def change
    create_table :animais do |t|
      t.string :nome
      t.string :identificacao
      t.references :raca, index: true
      t.references :propriedade, index: true
      t.references :classificacao, index: true

      t.timestamps
    end
  end
end
