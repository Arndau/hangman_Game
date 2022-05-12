class AddUserChoiceToGuesses < ActiveRecord::Migration[6.1]
  def change
    add_column :guesses, :user_choice, :string
  end
end
