class EventsController < ApplicationController

    def index
        @events = Event.all
        render json: @events
    end

    def show
        @event = Event.find(params[:id])
        render json: @event
    end

    def create
        @event = Event.create(event_params)
        render json: @event
    end

    def update
        @event = Event.find(params[:id])
        @event.update(event_params)
        render json: @event
    end

    def destroy
        @event = Event.find(params[:id])
        @event.destroy
        render json: { status: 'SUCCESS', message: 'deleted the event', data: @event }
    end

    private
    
    def event_params
        params.permit(:name, :date, :page_id)
    end

end
