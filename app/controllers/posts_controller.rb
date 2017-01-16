class PostsController < ApplicationController
  before_action :get_post, only: [:show, :update]
  def index
    @posts = Post.all.order(created_at: :asc)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    @post = post.update(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :edit
    end
  end

  def update
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  private
  def get_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
