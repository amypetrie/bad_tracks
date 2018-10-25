class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

#this lets the view access the helper method
  helper_method :current_user
  #do not need to inlcude current_admin? here unless being used in the view

#exists for life of the request
  def current_user #views are calling the method, not instance variable
    @current_user_lookup ||= User.find(session[:user_id]) if session[:user_id] != nil
  end

  def current_admin?
    current_user && current_user.admin?
                      #.admin comes from enums that we built (rails magic)
  end
  # before_action :set_breadcrumb
  #
  # def set_breadcrumb
  #   @breadcrumbs ||= session[:breadcrumbs]
  #   @breadcrumbs.push(request.url)
  # end

end
