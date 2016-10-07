class ContactMailer < ActionMailer::Base
 default to: "SVern99@aol.com"

 def contact_email(name, email, message)
 @name = name
 @email = email
 @message = message

 mail(from: email, subject: 'Sandy's Articles: Contact Form Message')
 end
end