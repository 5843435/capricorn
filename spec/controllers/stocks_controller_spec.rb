require 'rails_helper'

RSpec.describe StocksController, :type => :controller do
  login_user
  # index methodについてネスト
  describe "GET index" do
    # status code 200が正常に帰ってくるか？
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
    it "responds successfully with an HTTP 200 status code" do
      get :new
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    # 正しいテンプレートが利用されているか？   
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    # アイテムが登録されるか？
    it "save success" do
      stock_params = { user_id: 1,item_id: 1, unit: 60, num: 1 }
      expect { 
        post :create, stock: stock_params
      }.to change(Stock, :count).by(1)
    end
    # 登録後のindexに遷移されるか？
    it "redirect to :index" do
      stock_params = { user_id: 1,item_id: 1, unit: 60, num: 1 }
      post :create, stock: stock_params
      expect(response).to redirect_to stocks_path(assigns([:stocks]))
    end
    # 日数を増やすことができるか？
    #it "change increase_day" do
    #  stock_params = { num: 1 }
    #  patch :update, id: stock, stock: stock_params
    #  stock.reload
    #  expect(stock.increase_day).to eq(1)
    #end
  end
end

