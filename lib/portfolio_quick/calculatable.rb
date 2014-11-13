module PortfolioQuick::Calculatable
	def percentage
		if purchase_price == 0
			100
		else
			((current_price - purchase_price)/purchase_price)*100
		end
	end

	def day_percentage
		((current_price - open_price)/open_price)*100
	end
end