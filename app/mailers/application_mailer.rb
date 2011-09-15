require 'postageapp/mailer'

class ApplicationMailer < PostageApp::Mailer
  default :to => "acwrightdesign@gmail.com"
  
  def application(application)
    @application = application
    if @application.resume
      attachments[@application.resume.original_filename] = File.read(@application.resume.tempfile.path)
    end
    mail(
      :from     => @application.email,
      :subject  => "Application From #{@application.name} At marc1.com"
    )
  end
end