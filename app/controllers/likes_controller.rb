class LikesController < ApplicationController
  def create
    Secret.find(params[:sec_id]).likes.create(user: current_user)
    redirect_to '/secrets'
  end

  def destroy
    Like.find_by_user_id_and_secret_id(current_user.id,params[:id]).delete
    # Secret.find(params[:id]).likes.delete(user: current_user)
    redirect_to '/secrets'
  end

end
