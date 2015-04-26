class UsersController < ApplicationController
  before_action :require_login, except: [:show, :index]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    # @question = Question.find(params[:id])
  end

   def new
    @user = User.new
   end

   def create
  @user = User.new(user_params)
  if @user.save
    session[:user_id] = @user.id.to_s
    flash[:welcome] = "Thanks for signing up, #{@user.username}!"
    redirect_to users_path
  else
    render :new
  end
end

   def edit
    @user = User.find(params[:id])
   end

   def update
      @user = User.find(params[:id])

      if @user.update_attributes(user_params)    
            redirect_to users_path
      else
        render :edit      
      end
   end

   def destroy
     @user = User.find(params[:id])
     @user.destroy
     redirect_to users_path
   end

   private
   def user_params
      params.require(:user).permit(:username, :email, :password)
   end

      private
            def require_login
               unless logged_in?
                flash[:error] = "You must be logged in to access that page."
                redirect_to login_path
            end
      end


end

