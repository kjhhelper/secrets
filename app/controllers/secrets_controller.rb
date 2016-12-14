class SecretsController < ApplicationController

  def index
    # binding.pry
    @secrets=Secret.all
    render "index"
  end

  def create
    puts "im here!!!!"
    user = User.find(current_user)
    user.secrets.create(secret_params)
    redirect_to "/users/#{user.id}"
  end

  # def savesecret
  #   User.find(session[:user_id]).secrets.create(content_params)
  #   redirect_to "/users/#{session[:user_id]}"
  # end

  def destroy
    # binding.pry
    Secret.destroy(params[:id])
    # redirect_to "/users/#{current_user.id}"
    redirect_to '/secrets'
  end

  private
  def secret_params
      params.require(:secret).permit(:content)
  end
end
