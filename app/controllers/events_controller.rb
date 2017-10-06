class EventsController < ApplicationController
  def index
    @events = event.all
  end

  def show
    @event = event.find(params[:id])
  end

  def new
    @event = event.new
  end

  def edit
    @event = event.find(params[:id])
  end

  def create
    @event = event.new(event_params)
    @event.save
  end

  def update
    @event = event.find(params[:id])
    @event.update(event_params)
  end

  def destroy
    @event = event.find(params[:id])
    @event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:date, :city, :state, :status)
  end
end
