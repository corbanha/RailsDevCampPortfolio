class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  enum status: {
    draft: 0,       # will automatically add draft! and draft?, published! and published? methods
    published: 1
  }
end
