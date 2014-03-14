class CreateTipoMedicamentos < ActiveRecord::Migration
  def change
    create_table :tipo_medicamentos do |t|
      t.string :tipo_medicamento

      t.timestamps
    end
  end
end
