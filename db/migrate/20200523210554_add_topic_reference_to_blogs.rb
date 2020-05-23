class AddTopicReferenceToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_reference :blogs, :topic, null: false, foreign_key: true, default: 1
  end
end
