class CreateUserProjectRelations < ActiveRecord::Migration
  def change
    create_table :user_project_relations do |t|
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end

    add_index :userprojectrelations, :user_id
    add_index :userprojectrelations, :project_id
    add_index :userprojectrelations, [:user_id, :project_id], unique: true

  end
end
