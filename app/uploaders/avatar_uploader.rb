# class AvatarUploader - Handle avatar Uploading with carrierwave
class AvatarUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end


  def default_url(*args)
    "/images/fallback/" + [version_name, "default_avatar.jpg"].compact.join('_')
  end

  def extension_allowlist
    %w(jpg jpeg png)
  end
end
