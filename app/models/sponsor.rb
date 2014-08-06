class Sponsor < ActiveRecord::Base
  mount_uploader :logo, SponsorLogoUploader

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
