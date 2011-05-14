if Rails.env.production?
  Sass::Plugin.options[:never_update] = true
end