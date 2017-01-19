class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_categories
  before_action :latest_posts

  private

  def latest_posts
    @latest_posts = Post.all.order(created_at: :asc).first(5)
    @latest_videos = Video.all.order(created_at: :asc).first(5)
  end

  def set_categories
    @categories = Category.all.order(name: :desc)
  end
end
