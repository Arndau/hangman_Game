class GamesController < ApplicationController
  skip_before_action :authenticate_user!

    # Les variables nécessaires au lancement d'une partie :
    # - letters : les lettres de l'alphabet
    # - word : le mot qu'il faut deviner,
              # - une première méthode devra surement faire un ".split" pour remplacer la lettre une foi celle ci devinée.
              # - une deuxième méthode devra afficher le nombre de lettres et les remplacer par un '_' dans la show.
    # - life : le nombre de vie du joueur, départ à 5 vie, perd une vie a chaqt stue fois que user_choice == nil
    # - user_choice : le dernier choix du user
    # - choices : doit comptabiliser les choix prècédents (un array des lettres choisies)
    # - image : la première image.
              # - if bad_choices == 0 alors afficher la premiere image,
              # - if bad_choices == 1 alors afficher la deuxieme image,
              # - ETC ...

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @word_to_guess = words.sample
    @health_bar = 5
    @game_status = "Game not started yet"
  end

  def new
    # Game.destroy_all
    @game = Game.new
  end

  def create
    @game = Game.new
    @game.save!
    redirect_to game_path(@game)
  end

  def show
    @game = Game.new
    @game = Game.last
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    # redirect_to games_path

  end
  private

  def game_params
    params.require(:game).permit(@word_to_guess, @health_bar, @game_status)
  end

end
