Rails.application.routes.draw do
  root to: 'articles#index'

  get 'index', to: 'articles#index'
  get 'articles/new', to: 'articles#new'
  get 'articles/:id', to: 'articles#show', as: :article
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  
  post 'articles', to: 'articles#create'
  patch 'articles/:id', to: 'articles#update'
  delete 'articles/:id', to: 'articles#destroy', as: :delete_article
end
