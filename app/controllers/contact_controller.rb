class ContactController < ApplicationController
  
  def index
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])
    @mailer = ContactMailer.contact(@contact)
    
    respond_to do |format|
      if @contact.valid?
        @mailer.deliver
        format.html { redirect_to contact_url, :notice => "Thanks! Your message has been delivered!"}
      else
        format.html { render :controller => 'contact', :action => 'index' }
      end
    end
  end
end