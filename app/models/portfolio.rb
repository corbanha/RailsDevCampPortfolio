class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumbnail

  after_initialize :set_defaults

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }

  def self.angular
    where(subtitle: 'Angular')
  end

  private

  def set_defaults
    self.main_image ||= 'https://picsum.photos/300/400'
    self.thumbnail ||= 'https://picsum.photos/350/200'
  end
end
