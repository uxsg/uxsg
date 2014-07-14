class Speaker < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  mount_uploader :photo, SpeakerImageUploader

  validates :first_name, :last_name, presence: true

  def name
    if asian_name
      "#{self.last_name} #{self.first_name}"
    else
      "#{self.first_name} #{self.last_name}"
    end
  end
end
