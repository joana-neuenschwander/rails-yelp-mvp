Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
    # O new é um GET, para ver o form apenas. O create é para enviar as informações
    # e fazer um submit. É um POST, está a enviar informações para a base de dados.
    # Fazemos nesting só quando precisamos do id do parent. Preciso primeiro encontrar
    # o restaurante para associar a review a este restaurante.
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
