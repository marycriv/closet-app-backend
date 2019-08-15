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

  def create
    outfit = Outfit.new(outfit_params)
    if outfit.save
      params[:ids].each{|i| OutfitItem.create( outfit_id: outfit.id, item_id: i)}
    end
    render json: outfit.to_json
  end

  def update
    @outfit = Outfit.find(params[:id])
    @outfit.update(outfit_params)
    render json: @outfit.to_json
  end

  def destroy
    @outfit = Outfit.find(params[:id])
    @outfit.destroy
  end

  private

  def outfit_params
    params.require(:outfit).permit(:name, :user_id)
  end
end
