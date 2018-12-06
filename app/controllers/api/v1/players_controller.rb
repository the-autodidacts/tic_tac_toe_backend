class Api::V1::PlayersController < ApplicationController
  before_action :find_player, only: [:show, :update]
  def index
    @players = Player.all
    render json: @players, status: :ok
  end

  def show
    render json: @player, status: :accepted
  end

  def create
    @player = Player.create(player_params)
    if @player.valid?
      render json: @player, status: :created
    else
      render json: { errors: @player.errors.full_messages }, status: :unprocessible_entity
    end
  end


  def update
    @player.update(player_params)
    if @player.save
      render json: @player, status: :accepted
    else
      render json: { errors: @player.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def player_params
    params.permit(:name)
  end

  def find_player
    @player = Player.find(params[:id])
  end

end
