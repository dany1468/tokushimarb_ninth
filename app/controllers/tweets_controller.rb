class TweetsController < ApplicationController
  def create
    Tweet.create body: params[:tweet][:body], user: current_user

    redirect_to timelines_path
  end
end
