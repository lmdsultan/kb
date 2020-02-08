class BasesController < ApplicationController
  before_action :authenticate_user!
  def index
    @systems = System.all
  end

  def show
    @incidents = System.find(params[:id]).incidents
  end

  def details
    @incident = System.find(params[:system_id]).incidents.find(params[:id])
  end

end
