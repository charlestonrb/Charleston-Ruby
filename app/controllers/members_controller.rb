class MembersController < ApplicationController
  before_filter :find_member, :only => ['show', 'edit', 'update', 'destroy']
  respond_to :html, :json
  load_and_authorize_resource

  def index
    @members = Member.all
    respond_with @members
  end

  def show
    respond_with @member
  end

  def new
    @member = Member.new
    respond_with @member
  end

  def create
    @member = Member.new(params[:member])
    if @member.save
      flash[:notice] = "Successfully created member."
    else
      flash[:notice] = "Unable to create member."
    end
    respond_with @member
  end

  def edit
    respond_with @member
  end

  def update
    if @member.update_attributes(params[:member])
      flash[:notice] = "Successfully updated member."
    else
      flash[:notice] = "Unable to update member."
    end
    respond_with @member
  end

  def destroy
  end

private
  def find_member
    @member = Member.find(params[:id])
  end
end
