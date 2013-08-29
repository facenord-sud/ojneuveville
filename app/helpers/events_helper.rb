module EventsHelper
	def print_dates(event, format = :short)
		"#{l(event.starting_at, :format => format)} #{t(:au)}  #{l(event.ending_at, :format => format)}"
  end

  def print_responsable event
    event.responsable || link_to(event.user.name, event.user) || 'Aucun organisateur'
  end
end
