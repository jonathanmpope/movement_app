class CreateMovements < ActiveRecord::Migration[5.2]
  def change
    create_table :movements do |t|
      t.string :name
      t.integer :side
      t.boolean :qone
      t.boolean :qtwo
      t.boolean :qthree
      t.timestamps
    end
  end
end
