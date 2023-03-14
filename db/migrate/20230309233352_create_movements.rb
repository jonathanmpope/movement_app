class CreateMovements < ActiveRecord::Migration[5.2]
  def change
    create_table :movements do |t|
      t.string :name
      t.integer :side
      t.string :qone
      t.string :qtwo
      t.string :qthree
      t.timestamps
    end
  end
end
