class PalacesController < ApplicationController

  def index
    # include: [:locis] adds these to JSON
    render json: Palace.all
  end

  def show
    palace = Palace.find_by(id: params[:id])
    render json: palace
  end

  def create
    palace = Palace.create(palace_params)
    render json: palace
  end

  def palace_params
    params.require(:palace).permit(:name)
  end

end
 