class PagesController < ApplicationController
  def home
    @posts = Post.all.order(created_at: :asc).first(10)
    @videos = Video.all.order(created_at: :asc).first(10)
    @banner_post = Post.all.order(created_at: :asc).first
  end

  def search

    @posts = Post.search(params[:search])
    Post.reindex

    @videos = Video.search(params[:search])
    Video.reindex

    @portraits = Portrait.search(params[:search])
    Portrait.reindex


  end
end
