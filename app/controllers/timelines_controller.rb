class TimelinesController < ApplicationController
  def index

    query = if user_signed_in?
      Tweet.in(user_id: display_users)
    else
      Tweet.all
    end

    @tweets = query.desc(:posted_at)
  end

  private

  def display_users
    current_user.following_users << current_user
  end
end
