class Game < ApplicationRecord

  has_many :guesses
  validates :game_status, inclusion: {in: ["Game not started yet", "In Game", "You win", "You loose"] }

end
