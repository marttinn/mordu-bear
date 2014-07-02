class SparePartsController < ApplicationController
  def new
    @sparePart = SparePart.new
  end

  def create
    @sparePart = SparePart.new(spare_part_params)
    if @sparePart.save
      @Success = "Refaccion Guardada con Exito"
      render 'index'
    else
      render 'new'
    end
  end

  def edit
  end

  def show
  end

  def index
  end

  def spare_part_params
      params.require(:spare_part).permit(:name, :brand, :description, :carRegion, :padre_id)
  end
end
