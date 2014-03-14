class CreateCios < ActiveRecord::Migration
  def change
    create_table :cios do |t|
      t.date :data
      t.date :previsao_proximo
      t.references :cobertura, index: true
      t.references :animal, index: true

      t.timestamps
    end
  end
end
