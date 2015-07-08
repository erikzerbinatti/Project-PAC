class ResponsiblesController < ApplicationController

  def show 
    @responsible = Responsible.find(params[:id])
  end

  def new 
    @responsible = Responsible.new
  end

  def create
    filtered = params.require(:responsible).permit(:name, :email)
    @responsible = Responsible.new(filtered)

    if(@responsible.save)
      flash[:success] = 'Salvo com sucesso!'
      redirect_to @responsible
    else
      flash[:error] = 'Campo "Name obrigatório!"'
      redirect_to new_responsible_path
    end
  end
end