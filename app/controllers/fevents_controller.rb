class FeventsController < ApplicationController

def index
	@fevents = Fevent.all.sort_by &:date
end

def show
	@fevent = Fevent.find(params[:id])
end

def new
	@fevent = Fevent.new
end

def create
	@fevent = Fevent.new(params.require(:fevent).permit(:title, :date, :time, :url, :imageurl, :category, :description, :venue, :address, :neighborhood))
	if @fevent.save
		redirect_to fevents_path
	else
		render 'new'
	end
end

def edit
	@fevent = Fevent.find(params[:id])
end

def update
	@fevent = Fevent.find(params[:id])
	if @fevent.update_attributes(params.require(:fevent).permit(:title, :date, :time, :url, :imageurl, :category, :description, :venue, :address, :neighborhood))
		redirect_to fevents_path
	else
		render 'edit'
	end
end

def destroy
	@fevent = Fevent.find(params[:id])
	@fevent.destroy
	redirect_to fevents_path
end

end
