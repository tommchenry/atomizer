class ProjectsController < ApplicationController
  def index
    @projects = Project.select{ |p| p.children.empty? }
    @today = Calendar.find_by(title: Date.today)
  end

  def new
    @parent_id = params[:parent_id]
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    unless @project.save
      flash[:notice] = "Project not created successfully."
      flash[:color] = "valid"
    end
    redirect_to root_path
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :parent_id)
  end

end
