class PermittedParams < Struct.new(:params, :user)
   
   def product
      if user && user.admin? 
         params.require(:product).permit!
      end
   end
   
   def format
      if user && user.admin? 
         params.require(:format).permit!
      end
   end
                               
   def category
      if user && user.admin? 
         params.require(:category).permit!
      end
   end
                               
   def series
      if user && user.admin? 
         params.require(:series).permit!
      end
   end
                               
  


      
end