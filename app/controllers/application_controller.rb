class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  has_mobile_fu false

  before_action :set_device_variant

  # Overwrite the method sorcery calls when it detects a non-authenticated request.
  def not_authenticated
    # Make sure that we reference the route from the main app.
    redirect_to main_app.sign_in_path
  end

  private

  def set_device_variant
    request.variant = :mobile if is_mobile_device?
    request.variant = :tablet if is_tablet_device?
  end
end
