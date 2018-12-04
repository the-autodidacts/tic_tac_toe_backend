class Api::V1::PlayersController < ApplicationController
  def index
    @players = Player.all
    # test
    render json: @players, status: :ok
    #test
  end
end
