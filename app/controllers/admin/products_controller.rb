class Admin::ProductsController < AdminController
  before_filter :authenticate
  
  def index
    @products = Product.order('sku ASC')
  end
  
  def new
    @product = Product.new
  end
  
  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to admin_products_path }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @product = Product.find(params[:id])
    
    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to admin_products_path }
      else
        format.html { render :edit }
      end
    end
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    
    respond_to do |format|
      format.html  { redirect_to admin_products_path }
    end
  end
end