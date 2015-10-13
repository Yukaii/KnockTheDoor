class WorkspacesController < ApplicationController
  before_action :authenticate_user!

  def index
    @workspaces = Workspace.all
    # respond_to do |format|
      # @workspaces = current_user.workspaces.to_json
      # format.html { render json: @workspaces }
      # format.json { render json: @workspaces }
    # end
  end

  def show
    @workspace = Workspace.find_by(id: params[:id])

    if @workspace.nil?
      flash[:error] = "Workspace not found"
      redirect_to root_path
    end

  end

  def check_in

  end

end
