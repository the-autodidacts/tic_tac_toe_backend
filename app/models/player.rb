class Player < ApplicationRecord
  has_many :game_players, class_name: "GamePlayer", foreign_key: "player1_id"
  has_many :game_players, class_name: "GamePlayer", foreign_key: "player2_id"
  has_many :player1_id, through: :game_players, source: :player2_id
  has_many :player2_id, through: :game_players, source: :player1_id
end
