class Programme < ActiveRecord::Base
  include Sluggable
  friendly_id :title, use: :slugged

  has_many :programme_speakers
  has_many :speakers, through: :programme_speakers

  belongs_to :industry_track

  enum category: { misc:               0,
                   keynote:            1,
                   workshop:           2,
                   tour:               3,
                   "lightning talk" => 4 }

  scope :day_1, -> { where(day: 1) }
  scope :day_2, -> { where(day: 2) }
  scope :day_3, -> { where(day: 3) }

  scope :keynotes,  -> { where(category: 1) }
  scope :workshops, -> { where(category: 2) }

  def list_of_speakers
    speakers.map { |s| s.name }.to_sentence
  end

  rails_admin do
    edit do
      field :title
      field :slug
      field :happens_at
      field :day
      field :category
      field :industry_track
      field :description, :wysihtml5
      field :speakers
      field :sold_out
      field :slideshare_id
      field :vimeo_id
      field :flickr_url
    end
  end
end
