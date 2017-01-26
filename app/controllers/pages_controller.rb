class PagesController < ApplicationController
  def home
    @posts = Post.all.order(created_at: :asc).first(10)
    @videos = Video.all.order(created_at: :asc).first(10)
    @banner_post = Post.all.order(created_at: :asc).first
  end

  def search
    if params[:category]
      @posts = Post.search(params[:category])
      @videos = Video.search(params[:category])
    else
      @posts = Post.search(params[:search])
      @videos = Video.search(params[:search])
      @portraits = Portrait.search(params[:search])
    end
  end
end
