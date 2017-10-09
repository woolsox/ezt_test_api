class DetailsController < ApplicationController
  def index
    @details = Detail.all
    render json: @details
  end

  def show
    @detail = Detail.find(params[:id])
  end

  def new
    @detail = Detail.new
  end

  def edit
    @detail = Detail.find(params[:id])
  end

  def create
    @event = Event.find(params[:event_id])
    @detail = @event.details.create(detail_params)
    @detail.save
  end

  def update
    @detail = Detail.find(params[:id])
    @detail.update(detail_params)
  end

  def destroy
    @detail = Detail.find(params[:id])
    @detail.destroy
  end

  private

  def detail_params
    params.require(:detail).permit(:dos_contact, :parking, :load_in, :load_in_location, :door_time, :set_time, :backline, :hospitality, :green_room, :showers, :laundry, :wifi, :misc)
  end
end
