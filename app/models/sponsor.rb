class Sponsor < ActiveRecord::Base
  mount_uploader :logo, SponsorLogoUploader

  enum sponsor_type: { sponsor: 0,
                       partner: 1 }

  scope :sponsors, -> { where(sponsor_type: 0) }
  scope :partners, -> { where(sponsor_type: 1) }

  rails_admin do
    edit do
      field :name
      field :slug
      field :sponsor_type
      field :url
      field :description, :wysihtml5
      field :logo
    end
  end
end
