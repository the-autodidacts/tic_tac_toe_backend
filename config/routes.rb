Rails.application.routes.draw do

  scope path: 'tictactacoapi' do 
    namespace :api do
      namespace :v1 do
        resources :players
        get "/players/:id/games", to: "players#get_games"
        resources :game_players
        resources :games
      end
    end
  end
end
