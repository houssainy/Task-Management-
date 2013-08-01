class Project < ActiveRecord::Base
	has_many :user_project_relations, foreign_key: "user_id", dependent: :destroy
	#has_many :users, through: :user_project_relations
end
