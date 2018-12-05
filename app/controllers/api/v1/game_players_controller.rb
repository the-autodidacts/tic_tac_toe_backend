class Api::V1::GamePlayersController < ApplicationController
  before_action :find_game_player, only: [:show, :update]
  def index
    @game_players = GamePlayer.all
    render json: @game_players, status: :ok
  end

  def show
    render json: @game, status: :accepted
  end

  def create
    @game_player = GamePlayer.create(game_player_params)
    if @game_player.valid?
    redirect_to @game_player
    else
    flash[:errors] = @game_player.errors.full_messages
    redirect_to new_game_player_path
    end
  end

  def update
    @game_player.update(game_player_params)
    if @game_player.save
      render json: @game_player, status: :accepted
    else
      render json: { errors: @game_player.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def game_player_params
    params.permit(:name)
  end

  def find_game_player
    @game_player = Game.find(params[:id])
  end
end
