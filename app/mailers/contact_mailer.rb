require 'postageapp/mailer'

class ContactMailer < PostageApp::Mailer
  default :to => "researchmidamerican@gmail.com"
  
  def contact(contact)
    @contact = contact
    mail(
      :from     => @contact.email,
      :subject  => "Contact From #{@contact.name} At marc1.com"
    )
  end
end