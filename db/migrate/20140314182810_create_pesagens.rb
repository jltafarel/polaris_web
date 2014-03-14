class CreatePesagens < ActiveRecord::Migration
  def change
    create_table :pesagens do |t|
      t.float :peso
      t.date :data
      t.references :animal, index: true

      t.timestamps
    end
  end
end
