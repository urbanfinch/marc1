class HomeController < ApplicationController
  
  def index
    @featured_product = Product.where('featured = ? AND active = ?', true, true).first
  end
end