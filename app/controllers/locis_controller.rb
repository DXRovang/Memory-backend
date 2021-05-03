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
    loci.palace_id = palace.id
    loci.save
    render json: loci
  end

  def destroy
    loci = Loci.find_by(id: params[:id])
      # binding.pry
    loci.item.destroy
    loci.destroy
    render json: {message: "did it"}
  end

  def loci_params
    params.require(:loci).permit(:name, :item, :palaceName)
  end

end
