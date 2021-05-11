class LocisController < ApplicationController
  def index
    locis = Loci.all 
    render json: locis
  end

  def create
    palace = Palace.find_by(id: loci_params[:palace_id])
    loci = Loci.new(loci_params)
    loci.save
    render json: loci
  end

  def show
    loci = Loci.find_by(id: params[:id])
    render json: loci
  end

  def update
    binding.pry
    loci = Loci.find_by(id: params[:id])
    loci.update(loci_params)
    render json: loci
  end

  def destroy
    loci = Loci.find_by(id: params[:id])
    loci.destroy
    render json: loci
  end

  def loci_params
    params.require(:loci).permit(:name, :item, :palace_id, :id)
  end

end
