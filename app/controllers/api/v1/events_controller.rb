module Api::V1
  class EventsController < ApplicationController
    def index
      @events = Event.order("created_at DESC")
      render json: @events
    end

    def create
      @event = Event.create(event_params)
      render json: @event
    end

    def update
      @event = Event.find(params[:id])
      @event.update_attributes(event_params)
      render json: @event
    end

    def destroy
      @event = Event.find(params[:id])
      if @event.destroy
        head :no_content, status: :ok
      else
        render json: @event.errors, status: :unprocessable_entity
      end
    end

    private

    def event_params
      params.require(:event).permit(:title, :body)
    end
  end
end