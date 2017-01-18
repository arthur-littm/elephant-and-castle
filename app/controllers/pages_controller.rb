class PagesController < ApplicationController
  def home
    @posts = Post.all.order(created_at: :asc)
  end
end
