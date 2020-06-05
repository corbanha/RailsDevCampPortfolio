class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  belongs_to :topic

  enum status: {
    draft: 0,       # will automatically add draft! and draft?, published! and published? methods
    published: 1
  }

  def self.special_blogs
    all
  end

  def self.featured_blogs
    limit(2)
  end
end
