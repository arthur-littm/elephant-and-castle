class PostsController < ApplicationController
  before_action :get_post, only: [:show, :update, :edit, :destroy, :add_like]
  def index
    @posts = Post.all.order(created_at: :asc)
  end

  def show

    @like = @post.likes.build(ip: request.remote_ip)
    @likes_counter = @post.likes.all.count
    @can_like = @like.valid?
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    @categories = Category.all
  end

  def update
    @post.update(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to posts_path
    else
      render :edit
    end
  end

  private

  def get_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :introduction, :category_id, :content, :bootsy_image_gallery_id, :card_photo)
  end
end
