class HomeController < ApplicationController
  
  def index
    @featured_product = Product.where('featured = ? AND active = ?', true, true).first
    @featured_product = Product.first(:offset => rand(Product.count)) if @featured_product.nil?
  end
end