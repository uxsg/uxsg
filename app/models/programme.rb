class Programme < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :speaker

  enum category: { misc:     0,
                   keynote:  1,
                   workshop: 2 }

  def day
    return 1 if happens_at < "2014-10-02 00:00:00 +0800".to_time
    return 2 if happens_at < "2014-10-03 00:00:00 +0800".to_time
    return 3 if happens_at < "2014-10-04 00:00:00 +0800".to_time
  end
end
