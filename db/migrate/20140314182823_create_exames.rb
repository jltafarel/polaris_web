class CreateExames < ActiveRecord::Migration
  def change
    create_table :exames do |t|
      t.references :tipo_exame, index: true
      t.date :data
      t.references :animal, index: true

      t.timestamps
    end
  end
end
