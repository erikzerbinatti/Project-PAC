class ResponsiblesController < ApplicationController

  

  def create_person 
    filtered = params.require(:responsible).permit(:name, :email)
    @person = Responsible.new(filtered)

    if(@person.save)
      flash[:success] = 'Salvo com sucesso!'
      redirect_to @person
    else
      flash[:error] = 'Campo "Name obrigatório!"'
      redirect_to new_responsible_path
    end
  end
end