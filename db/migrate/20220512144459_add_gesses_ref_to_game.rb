class AddGessesRefToGame < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :guesse, foreign_key: true
  end
end
