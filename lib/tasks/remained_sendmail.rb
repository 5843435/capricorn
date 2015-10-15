require "#{Rails.root}/app/models/user"

class Tasks::RemainedSendmail
  #User = Struct.new("User", :name, :mail)
  MailInfo = Struct.new("MailInfo", :title, :text, :item, :url)
  def self.execute
    puts "send mail"
    #user = User.new("Kazuma", "kam.kaz.113@gmail.com")
    users = User.find_by_id(1)
    puts users.name
    #users.each do |user|
        #print("item_id = ", item.id)
    #end
    #mailinfo = MailInfo.new("test", "test mail.") 
    #RemainedMailer.remained_email(user, mailinfo).deliver
  end
end
