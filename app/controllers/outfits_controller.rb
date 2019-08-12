class OutfitsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @outfits = Outfit.all
    render json: @outfits
  end

  def show
    @outfit = Outfit.find(params[:id])
    render json: @outfit
  end

  def new
    @outfit = Outfit.new
  end

  def create
    @outfit = Outfit.find_or_create_by(outfit_params)
    render json: @outfit
  end

  def edit
    @outfit = Outfit.find(params[:id])
  end

  def update
    @outfit = Outfit.find(params[:id])
    @outfit.update(outfit_params)
    render json: @outfit.to_json
  end

  private

  def outfit_params
    params.require(:outfit).permit(:name)
  end
end
