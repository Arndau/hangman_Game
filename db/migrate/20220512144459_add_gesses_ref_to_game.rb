class AddGessesRefToGame < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :guesse, null: false, foreign_key: true
  end
end
