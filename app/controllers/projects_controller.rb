class ProjectsController < ApplicationController

def new
  @project = Project.new
  @project.build_contractor
end

def create
  @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
end

private

def project_params
  params.require(:project).permit(:nickname, :description, :contractor_id,
  contractor_attributes: [:name])
end

end
