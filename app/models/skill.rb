class Skill < ApplicationRecord
  includes Placeholder
  validates_presence_of :title, :percent_utilized

  after_initialize :set_defaults

  def set_defaults
    self.badge ||= "https://placehold.it/250x250"
  end

end
