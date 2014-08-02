class Publication < ActiveRecord::Base
  belongs_to :speaker

  mount_uploader :image, PublicationImageUploader
end
