class UsersController < ApplicationController
  def new
    render 'new'
  end

  def create
    @user=User.create(user_params)
    session[:user_id]=@user.id
    redirect_to "/users/#{@user.id}"
    # binding.pry
  end

  def show
    @secrets=User.find(session[:user_id]).secrets
    render "show"
  end

  private
  def user_params
      params.require(:user).permit(:name,:email,:password, :password_confirmation)
  end
  def content_params
      params.require(:secret).permit(:content)
  end
end
