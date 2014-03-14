class CreateNascimentos < ActiveRecord::Migration
  def change
    create_table :nascimentos do |t|
      t.date :data

      t.timestamps
    end
  end
end
