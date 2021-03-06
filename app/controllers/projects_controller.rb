class ProjectsController < ApplicationController
  before_action(:set_responsibles, only: [:new, :edit])

  def index
    @projects = Project.all
  end

  def new 
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
  end

  def create
    filtered = params.require(:project).permit(:name, :description, :responsible_id)
    @project = Project.new(filtered)

    if(@project.save)
      flash[:success] = 'Salvo com sucesso!'
      redirect_to @project
    else
      flash[:error] = 'Campo "Name" obrigatório!'
      redirect_to new_project_path
    end 
  end

  def destroy 
    filtered = params[:id]
    if(Project.destroy(filtered))
      flash[:success] = 'Deletado com sucesso!'
    end
    redirect_to '/projects'
  end

  def edit
    id = params[:id]
    @project = Project.find(id)
  end

  def update
    filtered = params.require(:project).permit(:name, :description, :responsible_id)
    @project = Project.find(params[:id])
    @project.update_attributes(filtered)
    if(@project.save)
      flash[:success] = 'Atualizado com sucesso!'
      redirect_to @project
    else
      flash[:error] = 'Campo "Name" obrigatório!'
      redirect_to edit_project_path(@project)
    end
  end

  private
  def set_responsibles
    @responsibles = Responsible.all
  end
end