class UsersController < ApplicationController
  def index
    @users=User.all
  end
  def create
    user=User.new(user_params)
    if user.save
      #session[:id] = user.id
      session[:id]=user.id
      flash[:notice]="ユーザー登録が完了しました。"
       redirect_to root_path
    else
     render :new
    end
    
  end
  def new
    @user=User.new
  end
  def edit
    @user =User.find_by(params[:id])
  end
  def update
     @user =User.find_by(params[:id])
     if @user.update_attributes(user_params)
       flash[:success] = "Profile updated"
      redirect_to root_path
     else
        render :edit
     end
  end
  
  
  def show
    @user=User.find_by(params[:id])
  end
    private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
end
