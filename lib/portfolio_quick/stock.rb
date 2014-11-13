require_relative 'calculatable'
require_relative 'scraper'

class PortfolioQuick::Stock
	include PortfolioQuick::Calculatable

	attr_reader :code, :current_price, :purchase_price, :quantity, :open_price

	def initialize(row)
		@code = row[0]
		@purchase_price = row[1].to_f
		@quantity = row[2].to_i
		@current_price = PortfolioQuick::Scraper.price @code
		scraped_open_price = PortfolioQuick::Scraper.open_price(@code)
		scraped_open_price > 0 ? @open_price = scraped_open_price : @open_price = @current_price
	end

	def total_value
		@current_price * @quantity
	end

	def day_gain
		total_value - @open_price * @quantity
	end

	def total_gain
		total_value - @purchase_price * @quantity
	end
end
