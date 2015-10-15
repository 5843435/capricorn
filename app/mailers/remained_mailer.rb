class RemainedMailer < ApplicationMailer
    default from: "info@capricorn.com"
    def remained_email(user, mailinfo)
        mail to: user.mail, subject: mailinfo.title
        @item = mailinfo.item
        @url = mailinfo.url
    end
end

