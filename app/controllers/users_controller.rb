class UsersController < ApplicationController
	def index
		
	end

	def show
		@user =  User.find(params[:id])
		@projects = @user.projects.paginate(page: params[:page])
	end

end
