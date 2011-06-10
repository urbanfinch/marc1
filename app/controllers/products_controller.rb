class ProductsController < ApplicationController
  
  def index
    @category = Category.find(params[:category_id])
    @products = @category.products.where(:active => true).order('title ASC')
  end
  
  def show
    @category = Category.find(params[:category_id])
    @product = Product.find(params[:id])
  end
end