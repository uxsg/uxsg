class Volunteer < ActiveRecord::Base
  validates :first_name, :last_name, :position, :company, :bio, presence: true

  rails_admin do
    edit do
      field :slug
      field :first_name
      field :last_name
      field :asian_name
      field :position
      field :company
      field :bio, :wysihtml5
    end
  end
end
