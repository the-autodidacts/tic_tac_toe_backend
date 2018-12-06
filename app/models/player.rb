class Player < ApplicationRecord
  has_many :game_players_1, class_name: "GamePlayer", foreign_key: "player1_id"
  has_many :game_players_2, class_name: "GamePlayer", foreign_key: "player2_id"
  # has_many :player1_id, through: :game_players, source: :player2_id
  # has_many :player2_id, through: :game_players, source: :player1_id



  def game_players
    self.game_players_1 + self.game_players_2
  end

  def games
    self.game_players.map{ |gp| gp.game }
  end


end
