class Task < ActiveRecord::Base
	belongs_to :user_stories
end
