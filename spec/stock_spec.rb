require_relative '../lib/portfolio_quick/stock'
require_relative '../lib/portfolio_quick/scraper'

describe PortfolioQuick::Stock do
	let(:stock) { PortfolioQuick::Stock.new %w(WBC 4 100) }

	before do
		allow(PortfolioQuick::Scraper).to receive_messages(price: 5, open_price: 5)
	end

	describe '#total_value' do
		it 'should be a product of current price and quantity' do
			expect(stock.total_value).to eq(500)
		end
	end
end