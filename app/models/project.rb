class Project < ActiveRecord::Base

  has_and_belongs_to_many :users
  has_many :user_stories , dependent: :destroy
  accepts_nested_attributes_for :user_stories, reject_if: proc { |attributes| attributes['title'].blank? } , :allow_destroy => true

end
