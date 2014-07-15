class Enquiry
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :type, :question, :email, :phone

  validates :name, :type, :question, presence: true
  validate :contact_details_present

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

  private

  def contact_details_present
    unless @email.present? || @phone.present?
      errors.add(:base, "You must provide either an email address or a phone number for us to contact you!")
    end
  end
end
