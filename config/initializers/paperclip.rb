if Rails.env.production?
  PAPERCLIP_STORAGE_OPTIONS = {
    :storage => :s3,
    :s3_credentials => {
      :bucket => ENV['S3_BUCKET'],
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
    }
  }
else
  Paperclip.options[:command_path] = "/usr/local/bin/"
  PAPERCLIP_STORAGE_OPTIONS = {}
end