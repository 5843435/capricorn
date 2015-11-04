class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com", charaset: "UTF-8"
  layout 'mailer'
end
