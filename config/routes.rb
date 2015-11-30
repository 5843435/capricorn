Rails.application.routes.draw do
  root 'top#index'

  # �����ƥ�
  resources :items

  # ���ꥸ�ʥ뾦��
  resources :user_items

  # �߸˰���
  resources :stocks do
    collection do
      match 'search' => 'stocks#search', via: [:get, :post], as: :search
    end
  end

  # �������桼���Ѻ߸˰���
  resources :projects, param: :key, :shallow => true do
    resources :stocks do
      collection do
        match 'search' => 'stocks#search', via: [:get, :post], as: :search
      end
    end
  end

  # JAN�����ɾ��ʸ�����
  get '/rakuten/search'

  # devise �桼����Ͽ��
  devise_for :users, controllers: { registrations: 'users/registrations' }

end
