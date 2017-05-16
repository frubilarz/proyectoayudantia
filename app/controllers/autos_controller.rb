class AutosController < ApplicationController
  before_action :set_auto, only: [:mostrar,:editar,:update,:eliminar]

  def index
    @autos = Auto.all
  end

  def mostrar
  end

  def nuevo
    @auto = Auto.new
  end

  def editar
  end


  def crear
    @auto = Auto.create(auto_params)
    respond_to do |format|
      if @auto.save
        format.html{redirect_to @auto, notice: 'Fue creado con mucho exito'}
      else
        format.html{render :nuevo}
      end
    end
  end


  def update
    respond_to do |format|
      if @auto.update(auto_params)
        format.html{redirect_to @auto}
      else
        format.html{render :nuevo}
      end
    end
  end

  def eliminar
    @auto.destroy
    respond_to do |format|
      format.html{redirect_to autos_url,notice: 'fue eliminado'}
    end
  end

  private

  def set_auto
    @auto = Auto.find(params[:id])
  end


  def auto_params
    params.require(:auto).permit(:color,:puertas)
  end

end
