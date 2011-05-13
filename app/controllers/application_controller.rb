class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :build_search
  
  def build_search
    @search = Product.search(params[:search])
  end
end