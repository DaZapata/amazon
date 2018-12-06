class UserNotifierMailer < ApplicationMailer
    default from: 'hello@amazon-clone.com'

    # send a subscribe email to the user
    def send_subscribe_email(subscriptor)
        @subscriptor = subscriptor
        @subject = "Thanks for subscribe for our amazing app"
        mail(to: @subscriptor.email, subject: @subject)
    end

    def new_post_notifying_user(email, title, id)
        @email = email 
        @title = title 
        @id = id 
        #@url = "http://localhost:3000/posts/#{@id}"
        @url = "https://amazon-makeitreal.herokuapp.com/posts/#{@id}"
        mail(to: @email, subject: "#{@title} - User / New blog on Amazon-Clone")
    end

    def new_post_notifying_subscriptor(subscriptor_email, title, id)
        @subscriptor_email = subscriptor_email 
        @title = title 
        @id = id
        @url = "http://localhost:3000/posts/#{@id}"
        mail(to: @subscriptor_email, subject: "#{@title} - Subscriptor / New blog on Amazon-Clone")
    end

    
end


