module Sluggable
  extend ActiveSupport::Concern

  included do
    extend FriendlyId
    before_validation :strip_slug
  end

  def strip_slug
    slug.strip!
  end
end
