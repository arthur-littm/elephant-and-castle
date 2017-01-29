class PagesController < ApplicationController
  def home
    @posts = Post.all.order(created_at: :desc).first(4)
    @videos = Video.all.order(created_at: :desc).first(4)
    @banner_post = Post.all.order(created_at: :asc).first
  end

  def search
    if params[:category]

      @posts = Post.all.where(category: params[:category]).order(created_at: :desc)

      @videos = Video.all.where(category: params[:category]).order(created_at: :desc)


    else
      @posts = Post.search(params[:search])
      @videos = Video.search(params[:search])
    end

  end
end
