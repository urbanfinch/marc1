if Rails.env.production?
  PAPERCLIP_STORAGE_OPTIONS = {
    :storage => :s3,
    :bucket => 'midamericanresearchcorp',
    :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
    }
  }
else
  Paperclip.options[:command_path] = "/usr/local/bin/"
  PAPERCLIP_STORAGE_OPTIONS = {}
end