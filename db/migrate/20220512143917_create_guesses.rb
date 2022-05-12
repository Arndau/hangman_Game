class CreateGuesses < ActiveRecord::Migration[6.1]
  def change
    create_table :guesses do |t|
      t.string :letters
      t.boolean :user_choice_status

      t.timestamps
    end
  end
end
