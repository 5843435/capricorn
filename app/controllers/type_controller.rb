class TypeController < ApplicationController
#トップページのフォームでCSRF対策を無効化する
#http://www.mk-mode.com/octopress/2014/04/15/rails-disable-csrf-protection/
  protect_from_forgery except: :index

  def index
    #トップページのフォームで渡される値を受けとる（トイレットペーパーの残数）
    @stock = params[:stock]
    #男性の1日の平均使用量(メートル)からあと何日で在庫がなくなるか計算する
    @days  = params[:stock].to_i/3.5

    #楽天ブックスAPIによるデータ取得
=begin
    RakutenWebService.configuration do |c|
      c.application_id = ENV["APPID"]
      c.affiliate_id = ENV["AFID"]
    end
    @books = RakutenWebService::Books::Book.search(:title => @type)
    #binding.pry
=end
  end
end
