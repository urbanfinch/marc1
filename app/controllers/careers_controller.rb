class CareersController < ApplicationController
  
  def index
    render
  end
  
  def apply
    @application = Application.new
  end
  
  def create
    @application = Application.create(params[:application])
    @mailer = ApplicationMailer.application(@application)
    
    respond_to do |format|
      if @application.valid?
        @mailer.deliver
        format.html { redirect_to careers_apply_url, :flash => { :notice => "Thanks! Your application has been delivered!", :success => true }}
      else
        format.html { render :controller => 'careers', :action => 'apply' }
      end
    end
  end
end