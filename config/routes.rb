Rails.application.routes.draw do
  root 'top#index'

  # アイテム（通常表示不要のためコメントアウト）
  #resources :items

  # オリジナル商品、indexのみ非表示とする
  resources :user_items, :except => [:index]

  # 在庫一覧
  resources :stocks do
    collection do
      match 'search' => 'stocks#search', via: [:get, :post], as: :search
    end
    collection do
      post 'charge'
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

  get '/top/agreement'
  get '/top/privacy'
  get '/top/inquiry'

end
