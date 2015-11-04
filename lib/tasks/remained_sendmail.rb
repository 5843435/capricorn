require "#{Rails.root}/app/models/user"

class Tasks::RemainedSendmail
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
                    end_day = stock.updated_at + stock.increase_day.days + (( stock.num * stock.unit / ( item.spent_men + item.spent_women )).floor * 24 * 3600 )
                    user = User.find_by(:id => i+1)
                    # メール通知設定が 0日 だったらメールおくんないよ！
                    if user.notification != 0 then
                      if end_day.to_date <= now + user.notification.day + 1 then
                          puts user.email + ":" + item.name + ":send mail"
                          RemainedMailer.remained_email(user, item, user.notification).deliver
                      end
                    end
                } 
            end
        end
    end
  end
end
