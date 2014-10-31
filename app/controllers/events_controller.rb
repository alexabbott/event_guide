class EventsController < ApplicationController

def index
	category_filter = params[:categoryfilter]
	case category_filter
	when "art_walk"
		@events = Event.where(:category => "art walk")
	when "community"
		@events = Event.where(:category => "community")
	when "festival"
		@events = Event.where(:category => "festival")
	when "free_booze"
		@events = Event.where(:category => "free booze")
	when "free_food"
		@events = Event.where(:category => "free food")
	when "free_music"
		@events = Event.where(:category => "free music")	
	when "free_party"
		@events = Event.where(:category => "free party")
	when "free_yoga"
		@events = Event.where(:category => "free yoga")
	when "street_fair"
		@events = Event.where(:category => "street fair")
	when "other"
		@events = Event.where(:category => "other")
	when "all_events"
		@events = Event.all.sort_by &:date
	else
		@events = Event.all.sort_by &:date
	end
	# @events = Event.all.sort_by &:date
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
