class Volunteer < ActiveRecord::Base
  mount_uploader :photo, SpeakerImageUploader

  validates :first_name, :last_name, :position, :company, :bio, presence: true

  def name
    if asian_name
      "#{self.last_name} #{self.first_name}"
    else
      "#{self.first_name} #{self.last_name}"
    end
  end

  private

  def team_enum
    ["experience design", "operations", "product & marketing"]
  end

  rails_admin do
    edit do
      field :slug
      field :first_name
      field :last_name
      field :asian_name
      field :team, :enum do
        enum_method do
          :team_enum
        end
      end
      field :position
      field :company
      field :bio, :wysihtml5
      field :photo
    end
  end
end
