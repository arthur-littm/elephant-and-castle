# encoding: utf-8

class CloudinaryImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :thumb do
    process resize_to_fill: [50, 50]
  end
end
