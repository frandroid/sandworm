class ProductsController < ApplicationController
   def new
      @product = Product.new
   end
   
   def show
      @product = Product.find(params[:id])
   end
  
   def create
      @product = Product.new(params[:product])
      if @product.save
         redirect_to product_url(@product)
      else
         if @product.upc.nil? 
            @product.upc = Product.last.id + 1         ### Will this cause collisions?
         end
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
   
 end
