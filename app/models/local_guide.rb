class LocalGuide < ActiveRecord::Base
  include Sluggable
  friendly_id :title, use: :slugged

  validates :title, :slug, :content, presence: true

  rails_admin do
    edit do
      field :title
      field :slug
      field :content, :wysihtml5
    end
  end
end
