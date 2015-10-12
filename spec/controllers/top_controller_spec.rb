require 'rails_helper'

RSpec.describe TopController, :type => :controller do
  describe 'Get #index' do
    context '未ログインユーザーがアクセスしたとき' do
      before { get :index }
      if 'indexテンプレートをrenderしていること' do
        expect(response).to render_template :index
      end
    end

    cotext 'ログインユーザーがアクセスしたとき' do
      before do
	user = create :user
        session[:use_id] = user.id
        get  :index
      end
   
      if 'indexテンプレートをrenderしていること' do
        expect(response).to render_template :index
      end
    end
end
