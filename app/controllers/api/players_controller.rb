class Api::PlayersController < ApplicationController
  def index
    players = Player.all
    render json: players, status: 200
  end

  def create
    player = Player.new(player_params)
    if player.save
      render json: player, status: :created #, location: player
    else
      render json: player.errors, status: 402
    end
  end

  private
    def player_params
      params.require(:player).permit(:facebookid,
                                    :name,
                                    :gender,
                                    :age,
                                    :location,
                                    :likes_men,
                                    :likes_women)
    end
end
