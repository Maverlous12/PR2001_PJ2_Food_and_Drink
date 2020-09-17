class Admin::SessionsController < ApplicationController
 layout false

 def index 

 end


 def new
  @user = User.new
  
 end

 def create
  
    @user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in_admin
      redirect_to admin_home_path
    else
      flash[:danger] = 'Invalid email/password combination'
      render :new
    end
  end

end