require 'postageapp/mailer'

class ApplicationMailer < PostageApp::Mailer
  default :to => "marc1@marc1.com"
  
  def application(application)
    @application = application
    mail(
      :from     => @application.email,
      :subject  => "Application From #{@application.name} At marc1.com"
    )
  end
end