Rails.application.routes.draw do
  root 'top#index'

  # �����ƥ���̾�ɽ�����פΤ��ᥳ���ȥ����ȡ�
  #resources :items

  # ���ꥸ�ʥ뾦�ʡ�index�Τ���ɽ���Ȥ���
  resources :user_items, :except => [:index]

  # �߸˰���
  resources :stocks do
    collection do
      match 'search' => 'stocks#search', via: [:get, :post], as: :search
    end
    collection do
      post 'charge'
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
