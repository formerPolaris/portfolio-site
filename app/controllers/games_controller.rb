class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @custom_title = true
    @game = Game.friendly.find(params[:id])
    if request.path != game_path(@game)
      redirect_to @game, status: :moved_permanently
    end
    render @game.slug
  end
end
