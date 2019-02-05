class AddGameWinnerToGamePlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :game_players, :game_winner, :string
  end
end
