class ProjectsController < ApplicationController
	before_filter :deny_to_visitors

	def new
		@project = Project.new 
	end

	def create
		#@relation = current_user.user_project_relations.new()
    @project = @relation.build(project_params)
    if @project.save
      flash[:success] = "Project created!"
      redirect_to project_path @project
    else
      #@feed_items = []
      #render 'static_pages/home'
    end
	end

    def show
    end

  private
	def deny_to_visitors
      redirect_to root_path unless user_signed_in?
    end

    def project_params
    	params.require(:project).permit(:title , :descreption)
    end
end
