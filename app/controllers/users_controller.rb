class UsersController < ApplicationController

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = 'User removed'
      redirect_to admins_path
    else
      flash[:notice] = 'User removal failed'
      redirect_to admins_path
    end
  end

end
