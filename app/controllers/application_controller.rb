class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include PublicActivity::StoreController

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied. Please Log-In with the proper credientials to view content."
    redirect_to root_url
  end
end
