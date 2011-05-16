class Admin::SessionsController < AdminController
  before_filter :authenticate, :only => [:destroy]
  
  def new
    render
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    
    if user
      session[:user_id] = user.id
      redirect_to admin_products_path
    else
      render :new
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to admin_login_path
  end
end