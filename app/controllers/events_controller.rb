class EventsController < ApplicationController

    def create
        @event = Event.new event_params
        if @event.save
            flash[:notice] = 'event created'
        else 
            render :new
        end
    end
    def new
        @event = Event.new
    end
    def show
        @event = Event.find params[:id]
    end
    def index
        @event = Event.all
    end
    def edit
    end
    def delete
        flash[:notice] = 'Event deleted'
        @event.deleted
    end
    private
    def event_params
        params.require(:event).permit(:title, :description, :price, :image, :participants, :start_time)
    end
end
