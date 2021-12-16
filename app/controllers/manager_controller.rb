class ManagerController < ApplicationController
  before_action :only_admin, only: :index

  def index
    @users = User.all
  end

  private
    def only_admin
      if not current_user.admin
        redirect_to :root
      end
    end

end
