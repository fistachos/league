module NewsHelper
	def edited_date(news)
		if news.created_at != news.updated_at
			"Edytowano: #{format_full_date(news.updated_at)}"
		else
			"Dodano: #{format_full_date(news.updated_at)}"
		end
	end
end
