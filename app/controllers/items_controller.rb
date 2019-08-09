class ItemsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @items = Item.all
    render json: @items
  end


  def new
    @item = Item.new
  end

  def create
    @item = Item.find_or_create_by(item_params)
    render json: @item
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    render json: @item.to_json
  end

  def show
    @item = Item.find(params[:id])
    render json: @item
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
  end

  private

  def item_params
    params.require(:item).permit(:user_id, :image, :classification, :brand)
  end
end
