class ApplicationController < ActionController::Base
  # Protect every route
  before_action :authenticate_user!

  # Skiping authentication for indicated pages
  #skip_before_action :authenticate_user!, only: :home

  # Adding new flash types
  add_flash_types :success, :info

  # Page to go after login
  def after_sign_in_path_for(resource)
    #my_page_path
    root_path
  end
end
