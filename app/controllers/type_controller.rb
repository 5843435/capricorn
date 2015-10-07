class TypeController < ApplicationController

  def index
    #トップページのフォームで渡される値を受けとる（トイレットペーパーの残数）
    @stock = params[:stock]
    #男性の1日の平均使用量(メートル)からあと何日で在庫がなくなるか計算する
    man_consume_oneday = 3.5
    woman_consume_oneday = 12.5
    consume_oneday = 0
    if current_user.family_men.to_i > 0 && current_user.family_women.to_i > 0 then
        consume_oneday = (current_user.family_men.to_i * man_consume_oneday) + (current_user.family_women * woman_consume_oneday)
    else
        consume_oneday = man_consume_oneday
    end
    @days  = (params[:stock].to_i/consume_oneday)*(60)
    @consume_oneday = consume_oneday
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
