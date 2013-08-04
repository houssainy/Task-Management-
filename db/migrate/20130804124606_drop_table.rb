class DropTable < ActiveRecord::Migration
  def change
  	drop_table :user_project_relations
  end
end
