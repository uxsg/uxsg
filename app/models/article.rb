class Article < ActiveRecord::Base
  validates :title, :content, presence: true

  rails_admin do
    edit do
      field :title
      field :content, :wysihtml5
    end
  end
end
