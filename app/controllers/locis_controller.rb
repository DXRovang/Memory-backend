class LocisController < ApplicationController
  def index
    locis = Loci.all 
    render json: locis
  end

  def create
    palace = Palace.find_by(name: loci_params[:palaceName])
    # binding.pry
    loci = Loci.new
    loci.name = loci_params[:name]
    loci.item = loci_params[:item]
    loci.palace_id = palace.id
    loci.save
    render json: loci
  end

  def update
    # binding.pry
    loci = Loci.find_by(id: params[:id])
    loci.update(loci_params)
  end

  def destroy
    loci = Loci.find_by(id: params[:id])
    loci.destroy
    render json: loci
  end

  def loci_params
    params.require(:loci).permit(:name, :item, :palaceName, :palace_id)
  end

end
