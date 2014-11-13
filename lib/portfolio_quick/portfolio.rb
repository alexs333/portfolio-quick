require_relative 'calculatable'

class PortfolioQuick::Portfolio
	include PortfolioQuick::Calculatable

	attr_accessor :stocks

	def initialize
		@purchase_price = 0
		@current_price = 0
		@stocks = []
	end

	def purchase_price
		stocks.collect{ |s| s.purchase_price * s.quantity }.inject(:+)
	end

	def current_price
		stocks.collect{ |s| s.current_price * s.quantity }.inject(:+)
	end

	def open_price
		stocks.collect{ |s| s.open_price * s.quantity }.inject(:+)
	end

	def day_gain
		stocks.collect{ |s| s.day_gain }.inject(:+)
	end

	def total_gain
		stocks.collect{ |s| s.total_gain}.inject(:+)
	end


	def value_percentage_for(stock)
		stock.total_value/current_price*100
	end
end
