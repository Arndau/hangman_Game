class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :word_to_guess
      t.integer :health_bar
      t.timestamps
    end
  end
end
