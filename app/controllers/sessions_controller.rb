class SessionsController < ApplicationController
  def new
    render 'login'
  end
  def create
    user = User.find_by(email: params[:user][:email])
    # puts login_params[:email]
    if user and user.authenticate(params[:user][:password])
      session[:user_id]=user.id
      redirect_to "users/#{user.id}"
    else
      flash[:danger] = 'Invalid email/password combination'
      redirect_to '/sessions/new'
    end
  end
  # private
  #   def login_params
  #
  #   end
end
