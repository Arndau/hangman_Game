class Game < ApplicationRecord

  belongs_to :games
  validates :game_status, inclusion: {in: ["Game not started yet", "In Game", "You win", "You loose"] }
end
