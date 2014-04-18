module Projectm
  class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable
  
    # Setup accessible (or protected) attributes for your model
    attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :first_name, :middle_name, :last_name, :avatar
    # attr_accessible :title, :body
    mount_uploader :avatar, AvatarUploader
    has_many :projects
    has_many :tasks
    has_many :project_comments
    has_many :task_comments
  end
end
