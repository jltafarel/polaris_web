class CreateTipoVacinas < ActiveRecord::Migration
  def change
    create_table :tipo_vacinas do |t|
      t.string :tipo_vacina

      t.timestamps
    end
  end
end
