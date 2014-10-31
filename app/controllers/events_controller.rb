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
	when "beverly_hills"
		@events = Event.where(:neighborhood => "beverly hills")	
	when "burbank"
		@events = Event.where(:neighborhood => "burbank")
	when "culver_city"
		@events = Event.where(:neighborhood => "culver city")
	when "downtown_la"
		@events = Event.where(:neighborhood => "downtown la")
	when "eagle_rock"
		@events = Event.where(:neighborhood => "eagle rock")
	when "east_la"
		@events = Event.where(:neighborhood => "east la")
	when "echo_park"
		@events = Event.where(:neighborhood => "echo park")
	when "exposition_park"
		@events = Event.where(:neighborhood => "exposition park / usc")
	when "glendale"
		@events = Event.where(:neighborhood => "glendale")
	when "griffith_park"
		@events = Event.where(:neighborhood => "griffith park")
	when "hermosa_beach"
		@events = Event.where(:neighborhood => "hermosa beach")
	when "highland_park"
		@events = Event.where(:neighborhood => "highland park")
	when "hollywood"
		@events = Event.where(:neighborhood => "hollywood")
	when "koreatown"
		@events = Event.where(:neighborhood => "koreatown")
	when "long_beach"
		@events = Event.where(:neighborhood => "long beach")
	when "los_feliz"
		@events = Event.where(:neighborhood => "los feliz")
	when "malibu"
		@events = Event.where(:neighborhood => "malibu")
	when "manhattan_beach"
		@events = Event.where(:neighborhood => "manhattan beach")
	when "marina_del_rey"
		@events = Event.where(:neighborhood => "marina del rey")
	when "mid_city"
		@events = Event.where(:neighborhood => "mid-city")
	when "north_hollywood"
		@events = Event.where(:neighborhood => "north hollywood")
	when "orange_county"
		@events = Event.where(:neighborhood => "orange county")
	when "pasadena"
		@events = Event.where(:neighborhood => "pasadena")
	when "pomona"
		@events = Event.where(:neighborhood => "pomona")
	when "san_gabriel_valley"
		@events = Event.where(:neighborhood => "san gabriel valley")
	when "santa_monica"
		@events = Event.where(:neighborhood => "santa monica")
	when "sherman_oaks"
		@events = Event.where(:neighborhood => "sherman oaks")
	when "silver_lake"
		@events = Event.where(:neighborhood => "silver lake")
	when "studio_city"
		@events = Event.where(:neighborhood => "studio city")
	when "universal_city"
		@events = Event.where(:neighborhood => "universal city")
	when "venice"
		@events = Event.where(:neighborhood => "venice")
	when "west_hollywood"
		@events = Event.where(:neighborhood => "west hollywood")
	when "westwood"
		@events = Event.where(:neighborhood => "westwood")
	when "other"
		@events = Event.where(:neighborhood => "other...")
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
