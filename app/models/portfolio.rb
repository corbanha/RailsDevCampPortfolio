class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumbnail

  after_initialize :set_defaults

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }

  def self.angular
    where(subtitle: 'Angular')
  end

  private

  def set_defaults
    self.main_image ||= Placeholder.image_generator(300, 400)
    self.thumbnail ||= Placeholder.image_generator(350, 200)
  end
end
