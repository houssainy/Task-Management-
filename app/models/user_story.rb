class UserStory < ActiveRecord::Base
	belongs_to :projects
	has_many :tasks , dependent: :destroy

    accepts_nested_attributes_for :tasks, reject_if: proc { |attributes| attributes['descreption'].blank? } , :allow_destroy => true

end
