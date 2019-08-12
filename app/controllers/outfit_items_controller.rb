class OutfitItemsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @outfit_items = OutfitItem.all
    render json: @outfit_items
  end

  def show
    @outfit_item = OutfitItem.find(params[:id])
    render json: @outfit_item
  end

  def new
    @outfit_item = OutfitItem.new
  end

  def create
    @outfit_item = OutfitItem.find_or_create_by(outfititem_params)
    render json: @outfit_item
  end

  def edit
    @outfit_item = OutfitItem.find(params[:id])
  end

  def update
    @outfit_item = OutfitItem.find(params[:id])
    @outfit_item.update(outfit_item_params)
    render json: @outfit_item.to_json
  end

  private

  def outfit_params
    params.require(:outfit).permit(:name)
  end
end
