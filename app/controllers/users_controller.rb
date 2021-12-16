class UsersController < ApplicationController
  def update
    @user = User.find(params[:id])
    @user.admin = !@user.admin
    @user.save

    redirect_to manager_index_path, notice: 'User saved'
  end
end
