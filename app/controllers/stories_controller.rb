class StoriesController < ApplicationController
  def index
    @stories = Story.all
    @liked = Like.where(liked: true)
  end

  def show
    @story = Story.find(params[:id])
    @user_like = @story.likes.where(user_id: current_user.id)
    @story_first_half = @story.content[0..(@story.content.length/2)]
    @story_second_half = @story.content[(@story.content.length/2)..(@story.content.length)]
  end
end
