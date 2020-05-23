class AddIconToSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :icon, :text
  end
end
