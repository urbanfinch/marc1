class Admin::CategoriesController < AdminController
  before_filter :authenticate
  
  def index
    @categories = Category.order('title ASC')
  end
  
  def new
    @category = Category.new
  end
  
  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(params[:category])

    respond_to do |format|
      if @category.save
        format.html { redirect_to admin_categories_path }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @category = Category.find(params[:id])
    
    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to admin_categories_path }
      else
        format.html { render :edit }
      end
    end
  end
  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    
    respond_to do |format|
      format.html  { redirect_to admin_categories_path }
    end
  end
end
