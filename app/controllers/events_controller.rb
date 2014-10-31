class EventsController < ApplicationController

def index
	category_filter = params[:categoryfilter]
	case category_filter
	when "art_walk"
		@events = Event.where(:category => "art walk").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "community"
		@events = Event.where(:category => "community").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "festival"
		@events = Event.where(:category => "festival").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "free_booze"
		@events = Event.where(:category => "free booze").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "free_food"
		@events = Event.where(:category => "free food").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "free_music"
		@events = Event.where(:category => "free music").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "free_party"
		@events = Event.where(:category => "free party").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "free_yoga"
		@events = Event.where(:category => "free yoga").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "street_fair"
		@events = Event.where(:category => "street fair").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "other"
		@events = Event.where(:category => "other").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "beverly_hills"
		@events = Event.where(:neighborhood => "beverly hills").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "burbank"
		@events = Event.where(:neighborhood => "burbank").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "culver_city"
		@events = Event.where(:neighborhood => "culver city").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "downtown_la"
		@events = Event.where(:neighborhood => "downtown la").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "eagle_rock"
		@events = Event.where(:neighborhood => "eagle rock").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "east_la"
		@events = Event.where(:neighborhood => "east la").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "echo_park"
		@events = Event.where(:neighborhood => "echo park").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "exposition_park"
		@events = Event.where(:neighborhood => "exposition park / usc").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "glendale"
		@events = Event.where(:neighborhood => "glendale").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "griffith_park"
		@events = Event.where(:neighborhood => "griffith park").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "hermosa_beach"
		@events = Event.where(:neighborhood => "hermosa beach").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "highland_park"
		@events = Event.where(:neighborhood => "highland park").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "hollywood"
		@events = Event.where(:neighborhood => "hollywood").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "koreatown"
		@events = Event.where(:neighborhood => "koreatown").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "long_beach"
		@events = Event.where(:neighborhood => "long beach").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "los_feliz"
		@events = Event.where(:neighborhood => "los feliz").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "malibu"
		@events = Event.where(:neighborhood => "malibu").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "manhattan_beach"
		@events = Event.where(:neighborhood => "manhattan beach").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "marina_del_rey"
		@events = Event.where(:neighborhood => "marina del rey").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "mid_city"
		@events = Event.where(:neighborhood => "mid-city").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "north_hollywood"
		@events = Event.where(:neighborhood => "north hollywood").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "orange_county"
		@events = Event.where(:neighborhood => "orange county").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "pasadena"
		@events = Event.where(:neighborhood => "pasadena").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "pomona"
		@events = Event.where(:neighborhood => "pomona").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "san_gabriel_valley"
		@events = Event.where(:neighborhood => "san gabriel valley").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "santa_monica"
		@events = Event.where(:neighborhood => "santa monica").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "sherman_oaks"
		@events = Event.where(:neighborhood => "sherman oaks").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "silver_lake"
		@events = Event.where(:neighborhood => "silver lake").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "studio_city"
		@events = Event.where(:neighborhood => "studio city").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "universal_city"
		@events = Event.where(:neighborhood => "universal city").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "venice"
		@events = Event.where(:neighborhood => "venice").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "west_hollywood"
		@events = Event.where(:neighborhood => "west hollywood").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "westwood"
		@events = Event.where(:neighborhood => "westwood").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "other"
		@events = Event.where(:neighborhood => "other...").where(:date => (Date.today...Date.parse('2024-10-31'))).sort_by &:date
	when "all_events"
		@events = Event.where(:date => (Date.today...Date.parse('2024-10-31'))).all.sort_by &:date
	else
		@events = Event.where(:date => (Date.today...Date.parse('2024-10-31'))).all.sort_by &:date
	end
	@fevents = Fevent.all.sort_by &:date
	@event = Event.new
	@user = User.new
	@is_login = true
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
		redirect_to :root
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
		redirect_to :root
	else
		render 'edit'
	end
end

def destroy
	@event = Event.find(params[:id])
	@event.destroy
	redirect_to :root
end

end
