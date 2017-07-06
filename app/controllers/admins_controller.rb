class AdminsController < ApplicationController

def show
  @users = User.all
end

def destroy
  byebug
  # @user = User.find(params[:user_id])
    if @user.destroy
      redirect_to root_path
    end
end

end
