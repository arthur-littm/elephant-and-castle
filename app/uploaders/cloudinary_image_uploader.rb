# encoding: utf-8

class CloudinaryImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process resize_to_limit: [1160, 2000]

  version :large do
    process resize_to_fit: [
      Bootsy.large_image[:width], Bootsy.large_image[:height]
    ]
  end

  version :medium do
    process resize_to_fit: [
      Bootsy.medium_image[:width], Bootsy.medium_image[:height]
    ]
  end

  version :small do
    process resize_to_fit: [
      Bootsy.small_image[:width], Bootsy.small_image[:height]
    ]
  end

  version :thumb do
    process resize_to_fill: [50, 50]
  end

end