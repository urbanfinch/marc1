class ProductsController < ApplicationController
  
  def index
    @category = Category.find(params[:category_id])
  end
  
  def show
    @category = Category.find(params[:category_id])
    @product = Product.find(params[:id])
  end
end