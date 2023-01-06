Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|en/ do
    root to: 'shops#index'
    get 'shops', to: 'shops#index'
    get 'shops/:id', to: 'shops#show', as: :shop
  end
end
