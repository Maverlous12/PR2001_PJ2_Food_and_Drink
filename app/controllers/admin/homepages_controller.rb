class Admin::HomepagesController < Admin::BaseController
  before_action :check_if_admin
  def index
  end

  private
  def check_if_admin 
    redirect_to root_path unless current_user.admin?
  end


end
