class ApplicationController < ActionController::Base
  check_authorization unless: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, alert: '権限がありません。'
  end
end
