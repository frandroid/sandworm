class UsersController < ApplicationController
   before_filter  :signed_in_user, only: [:index, :edit, :update]
   before_filter  :correct_user,   only: [:edit, :update]
   before_filter  :admin_user, only: [:destroy, :index]
 
   def new
      if !signed_in?
         @user = User.new
      else
         redirect_to user_path(current_user), notice: "You already have an account!" 
      end
   end

   def create
      if !signed_in?
         @user = User.new(params[:user])
         if @user.save
            sign_in @user
            flash[:success] = "Welcome to Great Worm Express Distro!"
            redirect_to @user
         else
            render 'new'
         end
      else
         redirect_to user_path(current_user), notice: "You already have an account!" 
      end
            rescue ActiveRecord::StatementInvalid
               # Handle duplicate email addresses gracefully by redirecting.
               redirect_to root_url
   end   

   def edit
   end
   
   def update
      if @user.update_attributes(params[:user])
         flash[:success] = "Profile updated"
         sign_in  @user
         redirect_to @user
      else
         render 'edit'
      end
   end   
   
   def destroy
      @user = User.find(params[:id])
      if !current_user?(@user)
         @user.destroy
         flash[:success] = "User annihilated"
         redirect_to users_path
      else
         redirect_to root_path, notice: "You can't delete yourself"
      end
   end   

   def show
      @user = User.find(params[:id])
   end
   
   def index
      @users = User.paginate(page: params[:page])
   end
   
   
   # ***** PRIVATE
   
   private
   
      def signed_in_user
         unless signed_in?
            store_location
            redirect_to signin_url, notice: "Please sign in."
         end
      end
      
      def correct_user
         @user = User.find(params[:id])
         redirect_to(root_path) unless current_user?(@user)
      end         

      def admin_user
         redirect_to(root_path) unless current_user.admin?
      end


      
end
 