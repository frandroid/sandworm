class ProductsController < ApplicationController  
before_filter :admin_user, only: [:new, :create, :edit, :update, :destroy, :index]
   
   def new
      @product = Product.new
   end
   
   def create
      @product = Product.new(permitted_params.product)
      if @product.save
         redirect_to product_url(@product)
      else
         render 'new'                             
      end
   end               
   
   def edit
      @product = Product.find(params[:id])
   end
  
   def update
      @product = Product.find(params[:id])
      if @product.update_attributes(permitted_params.product) 
         redirect_to product_url, notice: "#{@product.name} was updated."
      else
         render action: "edit"
      end
   end
   
   def destroy
      @product = Product.find(params[:id])
         if current_user.admin?
            @product.destroy
            flash[:success] = "Product annihilated"
            redirect_to products_path
         else
            redirect_to root_path, notice: "You can't delete this product"
         end
      end   
      
 
   def show
      @product = Product.find(params[:id])
   end
  
   def index
      @products = Product.all
   end

      #   attr_accessible :name, :subtitle, :medium_id, :series_id, :format_id, :length, :width, :height, :weight, :pages, :playtime, :pub_date, :description, :category_id, :upc, :visible, :active, :price, :can_wholesale, :wholesale_price, :cost, :inventory, :minimum_stock, :country_code
   
end
