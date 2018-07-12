Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  constraints format: :json do
    post '/create' => 'numbers#create'
  end
end
