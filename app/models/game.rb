class Game < ApplicationRecord

    # Les variables nécessaires au lancement d'une partie :
    # - letters : les lettres de l'alphabet
    # - word : le mot qu'il faut deviner, doit afficher le nombre de lettres et les remplacer par un '_'
    # - image : la première image
    # - wrong : doit compter le nombre de fois ou le resultat est 'NIL'
  def initialize
    @letters = ("a".."z").to_a
    @word = words.sample
    @image = images.first
  end

  def words
    words =
    [
      "spokesperson", "firefighter", "headquarters", "confession", "difficulty", "attachment", "mechanical",
      "accumulation", "hypothesis", "systematic", "attraction", "distribute", "dependence", "environment",
      "jurisdiction", "demonstrator", "constitution", "constraint", "consumption", "presidency", "incredible",
      "miscarriage", "foundation", "photography", "constituency", "experienced", "background", "obligation",
      "diplomatic", "discrimination", "entertainment", "grandmother", "girlfriend", "conversation", "convulsion",
      "constellation", "leadership", "insistence", "projection", "transparent", "researcher", "reasonable", "continental",
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
  end
    # TO DO : télécharger les images sur cloudinary et connecter à cloudinary
  def images
    ["1/5","2/5","3/5","4/5","5/5","6/5"]
  end

end
