Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :players
      get "/players/:id/games", to: "players#get_games"
    end
  end
  namespace :api do
    namespace :v1 do
      resources :game_players
    end
  end
  namespace :api do
    namespace :v1 do
      resources :games
    end
  end
end
