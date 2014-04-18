require_dependency "projectm/application_controller"

module Projectm
  class ProjectCommentsController < ApplicationController
  	def index
			@project_comments = ProjectComment.all
		end

		def new
			@project_comment = ProjectComment.new
			respond_to do |format|
				format.js
			end
		end

		def create
			debugger
			@project = Project.find(params[:project_id])
			@project_comment = @project.project_comments.build(params[:project_comment])
			if @project_comment.save
				redirect_to projectm.projects_path
			else
				render "new"
			end
		end
  end
end
