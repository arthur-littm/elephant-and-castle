class PagesController < ApplicationController
  def home
    @posts = Post.all.order(created_at: :asc).first(10)
    @videos = Video.all.order(created_at: :asc).first(10)
    @banner_post = Post.all.order(created_at: :asc).first
  end

  def search
    if params[:category]

      @posts = Post.all.where(category: params[:category])

      @videos = Video.all.where(category: params[:category])


    else
      @posts = Post.search(params[:search])
      Post.reindex

      @videos = Video.search(params[:search])
      Video.reindex
    end

  end
end
