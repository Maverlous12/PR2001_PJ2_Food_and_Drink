class Admin::BaseController < ApplicationController
  
  protect_from_forgery with: :exception
  layout "layouts/admin/application"
  include Admin::SessionsHelper
     
  

  def authenticate_user
    redirect_to admin_path unless session[:current_admin_id]
  end
end
