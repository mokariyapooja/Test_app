class ProjectController < ApplicationController
  def index
    @title = "All Project"
    @project = Project.all    
  end

  def new
   render "project/new"
  end
   
  def create
    @project = Project.new(project_params)
  end
  
  def show
    #@project = Project.all
    @project = Project.find(params[:id])
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to root_path
  end

  private
  def project_params   
    params.require(:project).permit(:name,:description,:technology,:start_date,:submission_date)
  end 

end
