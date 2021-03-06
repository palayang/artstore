class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
def admin_required
    if !current_user.admin?
	redirect_to "/"
    end
end

  protect_from_forgery with: :exception
end
