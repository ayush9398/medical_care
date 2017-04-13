class UsersController < ApplicationController
protect_from_forgery
def new
  	@user=User.new
  end
  
   def create
    @user = User.new(params[:user_params])
    if @user.save
      redirect_to @user 
      # Handle a successful save.
    else
      render 'new'
    end

    def show
    @user=User.last
  end
 


    def user_params
      params.require(:user).permit(:name, :email,:gender,:address,:dob,:otherinfo,:phoneno,:password)
    end 
end
end
