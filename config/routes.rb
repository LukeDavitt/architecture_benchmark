Rails.application.routes.draw do
  root 'home#index'
  match 'tests', to: 'home#index', via: :post
end
