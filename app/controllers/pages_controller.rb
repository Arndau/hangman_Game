class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def partie
    partie = Game.New
  end
end
