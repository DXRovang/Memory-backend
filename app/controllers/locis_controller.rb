class LocisController < ApplicationController
  def index
    locis = Loci.all 
    render json: locis
  end

  def create
    # binding.pry
    loci = Loci.create(loci_params)
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
    params.require(:loci).permit(:name, :item)
  end

end
