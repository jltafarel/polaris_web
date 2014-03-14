class CreateTipoExames < ActiveRecord::Migration
  def change
    create_table :tipo_exames do |t|
      t.string :tipo_exame

      t.timestamps
    end
  end
end
