class Programme < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :speaker

  enum category: { misc:     0,
                   keynote:  1,
                   workshop: 2 }

  scope :day_1, -> { where(day: 1) }
  scope :day_2, -> { where(day: 2) }
  scope :day_3, -> { where(day: 3) }
end