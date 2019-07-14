class StoriesController < ApplicationController
  def index
    @stories = Story.all
    @liked = Like.where(liked: true)
  end

  def show
    @story = Story.find(params[:id])
    @user_like = @story.likes.where(user_id: current_user.id)
  end
end
