class Sponsor < ActiveRecord::Base
  mount_uploader :logo, SponsorLogoUploader
end
