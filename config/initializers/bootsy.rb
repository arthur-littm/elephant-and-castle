# Use this setup block to configure all options available in Bootsy.
Bootsy.setup do |config|
  # Default editor options
  #   You can also override them locally by passing an
  #   editor_options hash to bootsy_area
  config.editor_options = {
  #   font_styles: true,
  #   emphasis: true,
  #   lists: true,
  #   html: false,
  #   link: true,
    image: true,
  #   color: true
  }
  #
  # Image versions available
  #  Possible values: :small, :medium, :large and/or :original
  config.image_versions_available = [:medium, :original]

  #
  #
  # Whether user can destroy uploaded files
  # config.allow_destroy = true

  config.uploader = "CloudinaryImageUploader"
end
