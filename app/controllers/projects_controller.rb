class ProjectsController < ApplicationController
  def index
    @projects = Project.select{ |p| p.children.empty? }
    @today = Calendar.find_by(title: Date.today)
  end

  def new
    @parent_id = params[:parent_id]
    @projects = []
    5.times do
      @projects << Project.new
    end
  end

  def create
    params["projects"].each do |project|
      if project["title"] != ""
        Project.create(project_params(project))
      end
    end
    redirect_to root_path
  end

  private

  def project_params(my_params)
    my_params.permit(:title, :description, :parent_id)
  end

end
