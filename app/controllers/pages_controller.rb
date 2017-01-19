class PagesController < ApplicationController
  def home
    @posts = Post.all.order(created_at: :asc).first(10)
    @videos = Video.all.order(created_at: :asc).first(10)
  end
end
