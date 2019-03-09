class ProjectsController < ApplicationController
  
  def index
    @projects = Project.where({user_id: params[:user_id]})
    
  end

  def new
  end

  def create
  end

  def show
    @project = Project.find_by_id(params[:id])
  end
end
