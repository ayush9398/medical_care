class UsersController < ApplicationController

def new
  	@user=User.new
  end
  
   def create
    @user = User.new(user_params)
    if @user.save
       log_in @user
       flash[:success] = "Welcome to the Sample App!"
      redirect_to @user 
      # Handle a successful save.
    else
      render 'new'
    end
 
 private

    def user_params
      params.require(:user).permit(:name, :email,:gender,:address,:dob,:otherinfo,:phoneno,:password
                                   )
    end 
end
end
