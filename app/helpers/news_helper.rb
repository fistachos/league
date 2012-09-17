module NewsHelper
	def edited_date(news)
		if news.created_at != news.updated_at
			"Edytowano: #{news.updated_at}"
		else
			"Dodano: #{news.updated_at}"
		end
	end
end
