class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include SmartListing::Helper::ControllerExtensions
  helper  SmartListing::Helper
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to access_denied_path, :alert => exception.message
  end

  def access_denied
    render template: 'layouts/access_denied'
  end
end
