class PortraitsController < ApplicationController
  before_action :get_portrait, only: [:show, :update, :edit, :destroy]
  def index
    @portraits = Portrait.all.order(created_at: :asc)
  end

  def show
    @likes_counter = @portrait.likes.all.count
  end

  def new
    @portrait = Portrait.new
  end

  def create
    @portrait = Portrait.new(portrait_params)
    @portrait.user = current_user
    if @portrait.save
      redirect_to portraits_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @portrait.update(portrait_params)
    if @portrait.save
      redirect_to portraits_path
    else
      render :edit
    end
  end

  def destroy
    if @portrait.destroy
      redirect_to portraits_path
    else
      render :edit
    end
  end

  private

  def get_portrait
    @portrait = Portrait.find(params[:id])
  end

  def portrait_params
    params.require(:portrait).permit(:photo, :description)
  end
end
