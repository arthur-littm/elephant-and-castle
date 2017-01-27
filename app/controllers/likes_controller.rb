class LikesController < ApplicationController

  def create
    @like = Like.create(like_params)
    redirect_to @like.likeable
  end

  private

  def like_params
    params.require(:like).permit(:ip, :likeable_type, :likeable_id)
  end

end
