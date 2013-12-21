class AccountController < ApplicationController
	#skip_before_action :require_login
  def index
   @user = User.find(current_user.id)
  end

  def update
	@user   = User.find(current_user.id)
	updated = @user.update(
		name: params[:user][:name], 
		email: params[:user][:email], 
		newsletter: params[:user][:newsletter]
	);
	
	if updated
		redirect_to("/account", {:flash => { :success => "Your changes have been saved." }, :status => :moved_permanently})
	else
  		redirect_to("/account", {:flash => { :error => "There was an error saving your changes. " + @user.errors.full_messages.join(', ') }, :status => :moved_permanently})
	end
  end

  private
  def update_attr
      params.require(:name).permit(:email, :newsletter)
  end
end