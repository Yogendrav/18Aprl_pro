module Projectm
  class Project < ActiveRecord::Base
    attr_accessible :invite_people, :project_created_by, :project_created_on, :project_details, :project_ends_on, :project_starts_on, :project_title, :status, :user_id
  	belongs_to :user
    has_many :pictures, as: :resource
	  accepts_nested_attributes_for :pictures
	  has_many :project_comments
	  accepts_nested_attributes_for :project_comments
	  has_many :tasks
	  accepts_nested_attributes_for :tasks

	  # Solar Search query
	  # searchable do
	  # 	text :project_title
	  # end

	  ####Simple Search#####
		def self.search(search)
		  if search
		    find(:all, :conditions => ['project_title LIKE ?', "%#{search}%"])
		  else
		    find(:all)
		  end
		end
  end
end
