Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :players
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
