Rails.application.routes.draw do
  root 'top#index'

  # アイテム
  resources :items

  # オリジナル商品
  resources :user_items

  # 在庫一覧
  resources :stocks do
    collection do
      match 'search' => 'stocks#search', via: [:get, :post], as: :search
    end
  end

  # 非ログインユーザ用在庫一覧
  resources :projects, param: :key, :shallow => true do
    resources :stocks do
      collection do
        match 'search' => 'stocks#search', via: [:get, :post], as: :search
      end
    end
  end

  # JANコード商品検索用
  get '/rakuten/search'

  # devise ユーザ登録用
  devise_for :users, controllers: { registrations: 'users/registrations' }

end
