class NotificationsMailer < ApplicationMailer
    default from: "info@healthcare.com"

    def welcome_email(user)
        @user = user
       # @user = user
        # mail(to: @user.welcome_email, subject:'Welcome to Healthcare services')
        mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end

end
