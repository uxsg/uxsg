class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, :content, presence: true

  rails_admin do
    edit do
      field :title
      field :slug do
        help "Required. Length up to 255. WARNING: Do not edit unless you know what you are doing."
      end
      field :content, :wysihtml5
    end
  end
end
