class SparePartsController < ApplicationController
  def new
    @spare_part = SparePart.new
  end

  def create
    @spare_part = SparePart.new(spare_part_params)
    if @spare_part.save
      flash[:success] = "Refaccion Guardada con Exito"
      @spare_parts = SparePart.all

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
    @spare_parts = SparePart.all
  end

  def spare_part_params
      params.require(:spare_part).permit(:brand, :car, :generation, :region, :year, :name, :kind)
    end
end
