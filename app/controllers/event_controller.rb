class EventController < ApplicationController

    def create
        @event = event.new event_params
        if @event.save
            flash[:notice] = 'event created'
        else 
            render :new
        end
    end
    def new
        @event = event.new
    end
    def show
        @event = event.find params[:id]
    end
    def index
        @event = event.all
    end
    def edit
    end
    def delete
        flash[:notice] = 'Event deleted'
        @event.deleted
    end
end
