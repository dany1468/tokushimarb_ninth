class TimelinesController < ApplicationController
  def index
    if user_signed_in?
      @tweets = Tweet.in(user_id: display_users)
    else
      @tweets = Tweet.all
    end
  end

  private

  def display_users
    current_user.following_users << current_user
  end
end
