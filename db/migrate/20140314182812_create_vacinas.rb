class CreateVacinas < ActiveRecord::Migration
  def change
    create_table :vacinas do |t|
      t.references :tipo_vacina, index: true
      t.references :medicamento, index: true
      t.references :animal, index: true
      t.date :data

      t.timestamps
    end
  end
end
