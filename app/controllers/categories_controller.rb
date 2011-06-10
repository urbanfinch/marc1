class CategoriesController < ApplicationController
  
  def index
    @categories = Category.order('title ASC')
  end
end