class RemainedMailer < ApplicationMailer
    default from: "info@capricorn.com"
    def remained_email(user, item, notification)
        @item_name = item.name
        @url = "http://www.amazon.co.jp/s/?field-keywords=" + item.name
        @notification = notification
        mail to: user.email + ',' +  user.email_second,
        subject: 'Capricornからのリマインド'
    end
end

