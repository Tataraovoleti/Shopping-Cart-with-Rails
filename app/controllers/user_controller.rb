class UserController < ApplicationController

  def login
    #  render :file=> 'app/views/user/login.html.erb'
  end

  def admin_login
    @user= User.find_by_name_and_password(params[:user][:name],params[:user][:password])
	if @user
     session[:login] = @user.name
     session[:cart] = nil
     flash[:notice] = "<b>#{session[:login]} Login Successfully.</b>"
     redirect_to :controller => :items
	else
	 flash[:error] = "<b>Username or Password wrong</b>"
	 redirect_to :controller=>'user', :action=>'login'
	end
  end

  def logout
  @user= User.find_by_name('fazel')
    session[:login] = nil
    session[:cart] = nil
    flash[:notice] = "<b>Logged out, cart reset.</b>"
    redirect_to :controller => :items
  end
end
