class ProjectsController < ApplicationController
  def new
  end

  def create
  end

  def show
    @project = Project.find_by_id(params[:id])
  end
end
