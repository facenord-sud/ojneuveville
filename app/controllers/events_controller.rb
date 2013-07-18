class EventsController < ApplicationController

load_and_authorize_resource

	before_filter :change_event, only:[:edit, :destroy, :update]
	after_filter :set_back_url

	def index
		redirect_to event_prog_path(Time.now.utc.year)
	end

	def programm
		act = Time.now.utc
		@date = act - (act - params[:event_id].to_i.year).year.year
		@year = get_event_by_date(@date.beginning_of_year, @date.end_of_year)
		@month = get_event_by_date(@date.beginning_of_month, @date.end_of_month)
		@week = get_event_by_date(@date.beginning_of_week, @date.end_of_week)
		@day = get_event_by_date(@date.beginning_of_day, @date.end_of_day)
		@next_event = Event.where("starting_at > ?", Time.now.utc).first
	end

	def show
		@event = Event.find(params[:id])
		@next_event = Event.where("starting_at > ?", @event.starting_at).first
		@old_event = Event.where("starting_at < ?", @event.starting_at).last
	end

	def edit
	end

	def update
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
		@event.destroy
		flash[:success] = t "events.destroy.success"
		redirect_to events_path
	end

	def signup
		event = Event.find(params[:event_id])
		if event.signUp?(current_user)
			flash[:error] = t "events.signup.error", name: event.name
			redirect_to events_path
		else
			event.users << current_user
			flash[:success] = t "events.signup.success", name: event.name
			redirect_to event
		end
	end

	def signout
		event = Event.find(params[:event_id])
		event.users.delete(current_user)
		flash[:success] = t "events.signout.success", name: event.name
		redirect_to event
	end

	private

		def get_event_by_date(start_at, end_at)
			Event.where(:starting_at => (start_at)..(end_at)).order("starting_at ASC").all
		end

		def change_event
			@event = Event.find(params[:id])
			if @event.starting_at.past?
				flash[:error] = t "events.error.past"
				redirect_to event_prog_path(@event.starting_at.year)
			end
		end
end
