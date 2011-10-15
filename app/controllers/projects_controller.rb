class ProjectsController < ApplicationController
  load_and_authorize_resource
  respond_to :html, :json
  def index
    @projects = Project.all
    respond_with @projects
  end

  def show
    @project = Project.find(params[:id])
    respond_with @project
  end

  def new
    @project = current_user.projects.build
    respond_with @project
  end

  def create
    @project = current_user.projects.build(params[:project])
    if @project.save
      flash[:notice] = "Successfully created project."
    else
      flash[:notice] = "Unable to create project."
    end
    respond_with @project
  end

  def edit
    @project = current_user.projects.find(params[:id])
    respond_with @project
  end

  def update
    @project = current_user.projects.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:notice] = "Successfully updated project."
    else
      flash[:notice] = "Unable to update project."
    end
    respond_with @project
  end

  def destroy
    @project = current_user.projects.find(params[:id])
    if @project.destroy
      flash[:notice] = "Successfully deleted project."
    else
      flash[:notice] = "Unable to delete project."
    end
    respond_with @project
  end
end

