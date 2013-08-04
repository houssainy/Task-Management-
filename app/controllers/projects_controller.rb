class ProjectsController < ApplicationController
	before_filter :deny_to_visitors

	def new
		@project = Project.new 
    2.times do
       @user_story = @project.user_stories.build
       @user_story.tasks.build 
    end
	end

	def create
    if (@project = current_user.projects.create!(project_params) )
      flash[:success] = "Project created!"
      redirect_to project_path @project
    else
      #@feed_items = []
      #render 'static_pages/home'
    end
	end

  def show
    @project = Project.find(params[:id])
    @users = @project.users.paginate(page: params[:page])
  end
  
  def index
    @projects = Project.paginate(page: params[:page])
  end

  private
	def deny_to_visitors
      redirect_to root_path unless user_signed_in?
    end

    def project_params
    	params.require(:project).permit(:title , :descreption , user_stories_attributes: [:title , tasks_attributes: :descreption] )
    end
end
