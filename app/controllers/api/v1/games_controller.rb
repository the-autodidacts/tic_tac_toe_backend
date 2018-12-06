class Api::V1::GamesController < ApplicationController
  before_action :find_game, only: [:show, :update]
  def index
    @games = Game.all
    render json: @games, status: :ok
  end

  def show
    render json: @game, status: :accepted
  end

  def create
    @game = Game.create(game_params)
    if @game.valid?
      render json: @game, status: :created
    else
      render json: { errors: @game.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @game.update(game_params)
    if @game.save
      render json: @game, status: :accepted
    else
      render json: { errors: @game.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def game_params
    params.permit(:board)
  end

  def find_game
    @game = Game.find(params[:id])
  end

end
