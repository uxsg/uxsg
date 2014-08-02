class Speaker < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  mount_uploader :photo, SpeakerImageUploader

  has_many :programme_speakers
  has_many :programmes, through: :programme_speakers

  validates :first_name, :last_name, presence: true

  def name
    if asian_name
      "#{self.last_name} #{self.first_name}"
    else
      "#{self.first_name} #{self.last_name}"
    end
  end

  rails_admin do
    edit do
      field :slug
      field :first_name
      field :last_name
      field :asian_name
      field :position
      field :company
      field :website_link
      field :linkedin_link
      field :twitter_link
      field :bio, :wysihtml5
      field :photo
      field :published
      field :programmes
    end
  end
end
