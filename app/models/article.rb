class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  mount_uploader :lead_image, ArticleImageUploader

  scope :published, -> { where(published: true) }

  validates :title, :content, :published_at, presence: true

  rails_admin do
    list do
      field :title
      field :published_at
      field :published
    end

    edit do
      field :title
      field :slug do
        help "Required. Length up to 255. WARNING: Do not edit unless you know what you are doing."
      end
      field :published_at
      field :published
      field :lead_image
      field :content, :wysihtml5
    end
  end
end
