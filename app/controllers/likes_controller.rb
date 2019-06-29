class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_story

  def create
    if (Like.where(user_id: current_user.id, story_id: @story.id).exists?)
      like = Like.where(user_id: current_user.id, story_id: @story.id).first
      if like.liked == true
        like.liked = false
      else
        like.liked = true
      end
      like.save
      redirect_back fallback_location: root_path
    else
      like = Like.new
      like.user = current_user
      like.story = @story
      like.liked = true
      like.save
      redirect_back fallback_location: root_path, notice: 'Le diste like a esta historia'
    end
  end

  private
  def find_story
      @story = Story.find(params[:id])
  end
end
