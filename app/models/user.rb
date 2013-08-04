class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, presence: true

  has_attached_file :photo, :styles => { :small => "150x150>" },
                  :url  => "/assets/images/users/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/images/users/:id/:style/:basename.:extension"

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png' , 'image/gif']

  has_and_belongs_to_many :projects
end
