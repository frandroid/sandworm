class ProductsController < ApplicationController  
   before_filter :admin_user, only: [:new, :create, :edit, :update, :destroy, :index]
   
   def new
      @product = Product.new
   end
   
   def create
      @product = Product.new(params[:product])
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
      respond_to do |format|
         if @product.update_attributes(params[:product]) 
            format.html { redirect_to product_url, notice: "#{@product.name} was updated." }
         else
            format.html { render action: "edit" }
         end
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
   
 end
