class EventsController < ApplicationController
load_and_authorize_resource
	def index
		@events = Event.where(:starting_at => (Time.now.utc.beginning_of_year)..Time.now.utc.end_of_year).all
	end

	def show
		@event = Event.find(params[:id])
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		if @event.update_attributes(params[:event])
			flash[:success] = t "events.update.success"
			redirect_to @event
		else
			render :edit
		end
	end

	def create
		@event = Event.new(params[:event])
		if @event.save
			flash[:success] = t "events.create.success"
			redirect_to @event
		else
			render :new
		end
	end

	def new
		@event = Event.new
	end

	def destroy
		event = Event.find(params[:id])
		event.destroy
		flash[:success] = t "events.destroy.success"
		redirect_to events_path
	end
end
