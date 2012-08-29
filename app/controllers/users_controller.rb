class UsersController < ApplicationController
   def new
      @user = User.new
   end

   def show
      @user = User.find(params[:id])
   end
   
   def create
      @user = User.new(params[:user])
      if @user.save
         flash[:success] = "Welcome to Great Worm Express Distro!"
         redirect_to @user
      else
         render 'new'
      end
#         rescue ActiveRecord::StatementInvalid
#            # Handle duplicate email addresses gracefully by redirecting.
#            redirect_to root_url
   end   
end
 