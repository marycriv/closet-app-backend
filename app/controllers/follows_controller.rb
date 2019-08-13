class FollowsController < ApplicationController
  
  skip_before_action :verify_authenticity_token

  def index
    follows = Follow.all
    render json: follows
  end

  def show
    follow = Follow.find(params[:id])
    render json: follow
  end

  def new
    follow = Follow.new
  end

  def create
    follow = Follow.find_or_create_by(follow_params)
    render json: follow
  end

  def edit
    follow = Follow.find(params[:id])
  end

  def update
    follow = Follow.find(params[:id])
    follow.update(follow_params)
    render json: follow.to_json
  end

  private

  def follow_params
    params.require(:follow).permit(:follower_id, :followee_id)
  end
end
