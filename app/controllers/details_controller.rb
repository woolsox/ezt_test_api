class DetailsController < ApplicationController
  def index
    @details = detail.all
  end

  def show
    @detail = detail.find(params[:id])
  end

  def new
    @detail = detail.new
  end

  def edit
    @detail = detail.find(params[:id])
  end

  def create
    @detail = detail.new(detail_params)
    @detail.save
  end

  def update
    @detail = detail.find(params[:id])
    @detail.update(detail_params)
  end

  def destroy
    @detail = detail.find(params[:id])
    @detail.destroy
  end

  private

  def detail_params
    params.require(:detail).permit(:dos_contact, :parking, :load_in, :load_in_location, :door_time, :set_time, :backline, :hospitality, :green_room, :shower, :laundry, :wifi, :misc)
  end
end
