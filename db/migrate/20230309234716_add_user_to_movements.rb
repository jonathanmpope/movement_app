class AddUserToMovements < ActiveRecord::Migration[5.2]
  def change
    add_reference :movements, :user, foreign_key: true
  end
end
