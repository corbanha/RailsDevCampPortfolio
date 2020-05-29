module DeviseWhitelistConcern
  extend ActiveSupport::Concern

  included do
    before_action :devise_permitted_parameters, if: :devise_controller?, only: [:create, :update, :destroy]
  end

  protected

  def devise_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
