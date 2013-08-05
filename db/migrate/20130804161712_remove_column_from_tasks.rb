class RemoveColumnFromTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :done?, :boolean
  end
end
