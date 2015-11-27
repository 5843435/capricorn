class TypeController < ApplicationController

  def index
    #トップページのフォームで渡される値を受けとる（トイレットペーパーの残数）
    @stock = params[:stock]
    #男性の1日の平均使用量(メートル)からあと何日で在庫がなくなるか計算する
    man_consume_oneday = 3.5
    woman_consume_oneday = 12.5
    consume_oneday = man_consume_oneday
    if !current_user.nil? then
        #if current_user.family_men.to_i > 0 && current_user.family_women.to_i > 0 then
            #1日の消費量計算
            consume_oneday = (current_user.family_men.to_i * man_consume_oneday) + (current_user.family_women * woman_consume_oneday)
    #会員登録時に住所情報がうまく登録できないので一時的にコメントアウト
=begin
            if !current_user.address.index("沖縄").nil? then
                consume_oneday = consume_oneday*2
            end
            if !current_user.address.index("大分").nil? then
                consume_oneday = consume_oneday/2
            end
=end
        #end
    end
    #終了日計算
    now = Time.now
    days  = (params[:stock].to_i/consume_oneday)*(30)
    @end_day = now + (days.floor * 24 * 3600)
    @days = days.floor
    @consume_oneday = consume_oneday
    #楽天ブックスAPIによるデータ取得
=begin
    RakutenWebService.configuration do |c|
      c.application_id = ENV["APPID"]
      c.affiliate_id = ENV["AFID"]
    end
    @books = RakutenWebService::Books::Book.search(
      :keyword => @type,
      :NGKeyword=> %E9%80%81%E6%96%99%20%E7%89%B9%E4%BE%A1%20%E4%BB%A3%E5%BC%95%E3%81%8D%20%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%20%E3%81%82%E3%81%99%E6%A5%BD%20%E5%90%8C%E6%A2%B1%20%E5%8F%96%E3%82%8A%E5%AF%84%E3%81%9B%20%E5%8C%85%E8%A3%85%20%E8%B2%A9%E5%A3%B2%20%E3%81%AA%E3%82%93%E3%81%A8)
    #binding.pry
=end
  end
end
