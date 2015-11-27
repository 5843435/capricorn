Rails.application.routes.draw do
 resources :stocks do
    collection do
      match 'search' => 'stocks#search', via: [:get, :post], as: :search
    end
  end

  resources :projects, param: :key, :shallow => true do
    resources :stocks do
      collection do
        match 'search' => 'stocks#search', via: [:get, :post], as: :search
      end
    end
  end

  #resources :stocks do
  #  collection do
  #   put 'increase_day'
  #   patch 'increase_day'
  #  end
  #end

  resources :items

  # JANコード商品検索用
  get '/rakuten/search'

  devise_for :users, controllers: { registrations: 'users/registrations', passwords: 'users/passwords' }
  get 'top/index'

  post 'type/index' => 'type#index'

  root 'top#index'


end
