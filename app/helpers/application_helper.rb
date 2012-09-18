module ApplicationHelper

	def format_full_date(date)
		l date, :format => "%d.%m.%Y, %H:%M"
	end
end
