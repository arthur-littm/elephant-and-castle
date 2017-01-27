class LikesController < ApplicationController
  def add_like
    @post = Post.find(params[:post_id])
    like = Like.create(ip: request.remote_ip.to_s)
    like.post_id = @post.id
    like.save
    if @post.save
      redirect_to post_path(@post)
    else
      render :show
    end

  end

end
