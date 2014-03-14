class CreateInformacoes < ActiveRecord::Migration
  def change
    create_table :informacoes do |t|

      t.timestamps
    end
  end
end
