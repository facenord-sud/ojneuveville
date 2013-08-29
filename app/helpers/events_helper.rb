module EventsHelper
	def print_dates(event, format = :short)
		"#{l(event.starting_at, :format => format)} #{t(:au)}  #{l(event.ending_at, :format => format)}"
  end

  def print_responsable(event)
    if event.responsable.blank?
      link_to(event.user.name, event.user)
    elsif ! event.responsable.blank?
      event.responsable
    else
      t('events.helper.no_responsable')
    end
  end
end
