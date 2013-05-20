class UserMailer < ActionMailer::Base
   default from: "frandroid+greatworm@gmail.com"
  
   def feedback(target)
      @address = target.email
      @name = target.name
      @subject = target.subject
      @message = target.message
      mail(from: @address, to: "frandroid+feedback@gmail.com", subject: "Great Worm contact form")
   end

end
