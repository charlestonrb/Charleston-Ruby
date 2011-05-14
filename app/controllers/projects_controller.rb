class ProjectsController < ApplicationController
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
    @project = Project.new
    respond_with @project
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = "Successfully created project."
    else
      flash[:notice] = "Unable to create project."
    end
    respond_with @project
  end

  def edit
    @project = Project.find(params[:id])
    respond_with @project
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:notice] = "Successfully updated project."
    else
      flash[:notice] = "Unable to update project."
    end
    respond_with @project
  end

  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      flash[:notice] = "Successfully deleted project."
    else
      flash[:notice] = "Unable to delete project."
    end
    respond_with @project
  end
end

