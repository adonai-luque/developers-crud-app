class DevelopersController < ApplicationController
  def index
    @developers = Developer.all
  end

  def show
    @developer = Developer.find(params[:id])
  end

  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(developer_params)

    if @developer.save
      redirect_to @developer, notice: "Desarrollador creado correctamente"
    else
      render :new, status: :unprocessable_entity, notice: "No se pudo crear el desarrollador"
    end
  end

  def edit
    @developer = Developer.find(params[:id])
  end

  def update
    @developer = Developer.find(params[:id])

    if @developer.update(developer_params)
      redirect_to @developer, notice: "Desarrollador actualizado correctamente"
    else
      render :edit, status: :unprocessable_entity, notice: "El desarrollador no se pudo actualizar"
    end
  end

  def destroy
    @developer = Developer.find(params[:id])
    @developer.destroy

    redirect_to developers_path, notice: "Desarrollador eliminado correctamente"
  end

  private

  def developer_params
    params.require(:developer).permit(:id, :name, :position)
  end
end
