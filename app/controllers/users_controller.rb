class UsersController < ApplicationController
  #before_action :authentication_request!, except: [:sign_up, :login]

  def sign_up
    @user = User.create(first_name:params[:first_name],
    last_name:params[:last_name],email:params[:email],password:params[:password])
    if @user.errors.present? 
      render json: {success: false, errors:@user.errors}
    else
      authentication_token = AuthToken.encode(user_id: @user.id)
      p 111
      NotificationsMailer.welcome_email(@user).deliver_now
      p 222
      render json: {success:true, user: @user.serializable_hash, authentication_token:authentication_token}
    end
  end


  def login
    @user = User.find_by(email:params[:email])
    #raise @user.valid_password?(params[:password]).inspect
    if @user.present? && @user.valid_password?(params[:password])
      authentication_token = AuthToken.encode(user_id: @user.id)
      render json: {data: @user, success:true, authentication_token:authentication_token}
    else
    render json: {success:false, message:"Invalid user"}
    end
  end
end
