module Projectm
  class Task < ActiveRecord::Base
    attr_accessible :all_project, :ends_on, :project_id, :starts_on, :task_created_by, :task_created_on, :task_details, :task_status, :title, :user_id
    
    #################################
    ########## Relationships#########
    #################################
    belongs_to :project
	  belongs_to :user

	  has_many :photos, as: :imageable
	  accepts_nested_attributes_for :photos

	  has_many :task_comments
	  accepts_nested_attributes_for :task_comments

	  #######################
	  #####Simple Search#####
	  #######################
		def self.search(search)
		  if search
		    find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
		  else
		    find(:all)
		  end
		end
  end
end
