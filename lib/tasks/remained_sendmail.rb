require "#{Rails.root}/app/models/user"

class Tasks::RemainedSendmail < ApplicationController
  include MyModule
  #User = Struct.new("User", :name, :mail)
  MailInfo = Struct.new("MailInfo", :title, :text, :item, :url)
  def self.execute
    #ユーザーの数ループ
    User.count.times do |i|
        #アイテムの数ループ
        Item.count.times do |j|
            stocks = Stock.find_by_sql(['select * from stocks where user_id = ? and item_id = ? order by updated_at desc limit 1', i+1, j+1])
            if !stocks.nil? then
                item = Item.find_by(:id => j+1)
                now = Time.zone.today
                stocks.each {|stock|
                    end_day = calcEndday(stock)
                    if end_day.to_date < now + 2.day then
                        user = User.find_by(:id => i+1)
                        puts user.email + ":" + item.name + ":send mail"
                        RemainedMailer.remained_email(user, item).deliver
                    end
                } 
            end
        end
    end
  end
end
