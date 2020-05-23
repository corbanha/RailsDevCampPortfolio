class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percent_utilized

  after_initialize :set_defaults

  private

  def set_defaults
    self.icon = Placeholder.image_generator(300, 300)
  end
end
