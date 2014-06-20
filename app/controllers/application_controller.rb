class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  has_mobile_fu false

  before_action :set_device_variant

  private

  def set_device_variant
    request.variant = :mobile if is_mobile_device?
    request.variant = :tablet if is_tablet_device?
  end
end
