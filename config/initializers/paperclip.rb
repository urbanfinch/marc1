#Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
Paperclip::Attachment.default_options[:path] = '/app/public/system/:attachment/:id/:style/:filename' #IMPORTANT!!!