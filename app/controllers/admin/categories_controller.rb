class Admin::CategoriesController < ApplicationController
  before_action :require_admin
  #before any other action method gets called...

  def index
  end

  private
    def require_admin
      render file: "/public/404" unless current_admin?
      #404 will be rendered within the yield
    end

end
