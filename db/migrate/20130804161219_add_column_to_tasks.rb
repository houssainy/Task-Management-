class AddColumnToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :user_story_id, :integer
  end
end
