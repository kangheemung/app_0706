class SessionsController < ApplicationController
  def new
  end
  def create
    @user =User.find_by(email: params[:sessions][:email].downcase)
    if @user&&@user.authenticate(params[:sessions][:password])
       p"==================="
        p params 
       p"==================="
       redirect_to root_path
    else
       flash.now[:danger] = 'Invalid email/password combination'
        
        render 'new'
    end
  end
  def delete
      session[:user_id] = nil
    redirect_to root_path
  end
end
