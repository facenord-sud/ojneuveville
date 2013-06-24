module EventsHelper
	def print_dates(event, format = :short)
		"#{l(event.starting_at, :format => format)} #{t(:au)}  #{l(event.ending_at, :format => format)}"
	end
end
