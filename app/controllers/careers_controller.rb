class CareersController < ApplicationController
  
  def index
    render
  end
  
  def apply
    @application = Application.new
  end
  
  def create
    @application = Application.new(params[:application])
    @mailer = ApplicationMailer.application(@application)
    
    respond_to do |format|
      if @application.valid?
        @mailer.deliver
        logger.debug(@application)
        format.html { redirect_to careers_apply_url, :notice => "Thanks! Your application has been delivered!"}
      else
        format.html { render :controller => 'careers', :action => 'apply' }
      end
    end
  end
end