class FollowingsController < ApplicationController
  def create
    to_user = User.find params[:following][:to_user_id]
    Following.create from_user: current_user, to_user: to_user

    redirect_to root_url
  end

  def destroy
    following = current_user.followings.find_by(to_user_id: params[:to_user_id])

    following.try(:destroy!)

    redirect_to users_path, notice: 'フォローを解除しました'
  end
end
