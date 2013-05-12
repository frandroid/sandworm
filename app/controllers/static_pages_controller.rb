class StaticPagesController < ApplicationController
  def home   
     @products = Product.all.paginate(page: params[:page])

  end

  def help
  end

  def about
  end

  def order
  end     
  
  def contact
  end
  
end
