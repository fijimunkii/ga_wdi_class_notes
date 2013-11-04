class CrewMembersController < ApplicationController
  respond_to :json

  def index
    @crew_members = CrewMember.select("name, id, on_ship")
    respond_with @crew_members
  end

  def show
    @crew_member = CrewMember.find(params[:id])
  end

  def create
    @crew_member = CrewMember.new(params[:crew_member])
  end

  def update
    @crew_member = CrewMember.find(params[:id])
    @crew_member.update_attributes(params[:crew_member])
    respond_with @crew_member
  end

  def destroy
    @crew_member = CrewMember.find(params[:id])
  end

end
