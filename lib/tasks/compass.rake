namespace :compass do
  desc "Watch the stylesheets dir for changes"
  task :watch do
    sh "compass watch --sass-dir #{Rails.root}/app/stylesheets --css-dir #{Rails.root}/public/stylesheets -s compressed"
  end
  
  desc "Compile the stylesheets"
  task :compile do
    sh "compass compile --sass-dir #{Rails.root}/app/stylesheets --css-dir #{Rails.root}/public/stylesheets -s compressed"
  end
end