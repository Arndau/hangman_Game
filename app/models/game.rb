class Game < ApplicationRecord

  has_many :guesses
  validates :game_status, inclusion: {in: ["Game not started yet", "In Game", "You win", "You loose"] }

  words =[
    "spokesperson", "firefighter", "headquarters", "confession", "difficulty", "attachment", "mechanical",
    "accumulation", "hypothesis", "systematic", "attraction", "distribute", "dependence", "environment",
    "jurisdiction", "demonstrator", "constitution", "constraint", "consumption", "presidency", "incredible",
    "miscarriage", "foundation", "photography", "constituency", "experienced", "background", "obligation",
    "diplomatic", "discrimination", "entertainment", "grandmother", "girlfriend", "conversation", "convulsion",
    "constellation", "leadership", "insistence", "projection", "transparent", "researcher", "reasonable","continental",
    "excavation", "opposition", "interactive", "pedestrian", "announcement", "charismatic", "strikebreaker",
    "resolution", "professional", "commemorate", "disability", "collection", "cooperation", "embarrassment",
    "contradiction", "unpleasant", "retirement", "conscience", "satisfaction", "acquaintance", "expression",
    "difference", "unfortunate", "accountant", "information", "fastidious", "conglomerate", "shareholder",
    "accessible", "advertising", "battlefield", "laboratory", "manufacturer", "acquisition", "operational",
    "expenditure", "fashionable", "allocation", "complication", "censorship", "population", "withdrawal",
    "sensitivity", "exaggerate", "transmission", "philosophy", "memorandum", "superintendent", "responsibility",
    "extraterrestrial", "hypothesize", "ghostwriter", "representative", "rehabilitation", "disappointment",
    "understanding", "supplementary", "preoccupation"
 ]

images = ["1/5","2/5","3/5","4/5","5/5","6/5"]

@word_to_guess = words.sample

end
