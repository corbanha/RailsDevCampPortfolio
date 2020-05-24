class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumbnail

  has_many :technologies

  # Use in terminal:
  # Portfolio.create!(title: 'Web app', subtitle: 'really cool', body: 'aldsjf', technologies_attributes: [{name: 'Ruby'}, {name: 'Rails'}, {name: 'CSS'}, {name: 'Web Dev'}])
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank? } # don't accept if name (part of technology) is blank
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
