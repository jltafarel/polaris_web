class CreateClassificacoes < ActiveRecord::Migration
  def change
    create_table :classificacoes do |t|
      t.string :classificao

      t.timestamps
    end
  end
end
