class StoriesController < ApplicationController
  def index
    @stories = Story.all
    @liked = Like.where(liked: true)
  end

  def show
    @story = Story.find(params[:id])
  end
end
