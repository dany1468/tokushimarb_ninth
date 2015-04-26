class TimelinesController < ApplicationController
  def index
    @tweets = Tweet.all
  end
end
