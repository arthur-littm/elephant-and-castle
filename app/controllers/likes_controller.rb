class LikesController < ApplicationController
  def add_like
    @object = (params[:model].capitalize).find(params[:post_id])
    like = Like.create(ip: request.remote_ip.to_s, likeable_id: @object.id, likeable_type: @object.class)
    like.save
    if @object.save
      redirect_to params[:model]_path(@object)
    else
      render :show
    end

  end

end
