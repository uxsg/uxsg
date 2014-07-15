class Programme < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :speaker

  enum category: { misc:     0,
                   keynote:  1,
                   workshop: 2 }
end
