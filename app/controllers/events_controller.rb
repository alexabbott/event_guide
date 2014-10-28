class EventsController < ApplicationController

def index
	@events = Event.all.sort_by &:date
	@fevents = Fevent.all.sort_by &:date
end

def show
	@event = Event.find(params[:id])
end

def new
	@event = Event.new
end

def create
	@event = Event.new(params.require(:event).permit(:title, :date, :time, :url, :imageurl, :category, :description, :venue, :address, :neighborhood))
	if @event.save
		redirect_to events_path
	else
		render 'new'
	end
end

def edit
	@event = Event.find(params[:id])
end

def update
	@event = Event.find(params[:id])
	if @event.update_attributes(params.require(:event).permit(:title, :date, :time, :url, :imageurl, :category, :description, :venue, :address, :neighborhood))
		redirect_to events_path
	else
		render 'edit'
	end
end

def destroy
	@event = Event.find(params[:id])
	@event.destroy
	redirect_to events_path
end

end
