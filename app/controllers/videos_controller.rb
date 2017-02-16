class VideosController < ApplicationController
  before_action :get_video, only: [:show, :update, :edit, :destroy]
  def index
    @videos = Video.all.order(created_at: :asc)
  end

  def show
    @video_id = @video.link.split("=").last
    @video_link = ("https://www.youtube.com/embed/" + @video_id).to_s
    @like = @video.likes.build(ip: request.remote_ip)

    @likes_counter = @video.likes.all.count
    @can_like = @like.valid?
  end

  def new
    if user_signed_in? && current_user.admin?
      @video = Video.new
    else
      redirect_to root_path
    end
  end

  def create
    @video = Video.new(video_params)
    @video.user = current_user
    if @video.save
      redirect_to video_path(@video)
    else
      render :new
    end
  end

  def edit
    if user_signed_in? && current_user.admin?
      @categories = Category.all
    else
      redirect_to root_path
    end
  end

  def update
    @video.update(video_params)
    if @video.save
      redirect_to videos_path
    else
      render :edit
    end
  end

  def destroy
    if @video.destroy
      redirect_to videos_path
    else
      render :edit
    end
  end

  private

  def get_video
    @video = Video.find(params[:id])
  end

  def video_params
    params.require(:video).permit(:title, :link, :introduction, :category_id, :content, :bootsy_image_gallery_id, :card_photo)
  end
end
