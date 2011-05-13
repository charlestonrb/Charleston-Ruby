class OrganizationsController < ApplicationController
  respond_to :html, :json
  def index
    @organizations = Organization.all
    respond_with @organizations
  end

  def show
    @organization = Organization.find(params[:id])
    respond_with @organization
  end

  def new
    @organization = Organization.new
    respond_with @organization
  end

  def create
    @organization = Organization.new(params[:organization])
    if @organization.save
      flash[:notice] = "Successfully created organization."
    else
      flash[:notice] = "Unable to create organization."
    end
    respond_with @organization
  end

  def edit
    @organization = Organization.find(params[:id])
    respond_with @organization
  end

  def update
    @organization = Organization.find(params[:id])
    if @organization.update_attributes(params[:organization])
      flash[:notice] = "Successfully updated organization."
    else
      flash[:notice] = "Unable to update organization."
    end
    respond_with @organization
  end

  def destroy
  end
end
