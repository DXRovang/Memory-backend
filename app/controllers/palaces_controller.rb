class PalacesController < ApplicationController

  def index
    render json: Palace.all
  end

  def show
    palace = Palace.find_by(id: params[:id])
    render json: palace
  end
end
