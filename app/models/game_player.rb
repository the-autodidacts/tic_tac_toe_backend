class GamePlayer < ApplicationRecord
  belongs_to :player1_id, class_name: "Player"
  belongs_to :player2_id, class_name: "Player"
  belongs_to :game_id
end
