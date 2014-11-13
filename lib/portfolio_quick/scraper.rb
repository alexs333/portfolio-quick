require 'mechanize'

class PortfolioQuick::Scraper
	def self.price(code)
		agent = Mechanize.new
		agent.get("http://www.asx.com.au/asx/research/companyInfo.do?by=asxCode&asxCode=#{code}")
		agent.page.search('.last')[1].text.to_f
	end

	def self.open_price(code)
		agent = Mechanize.new
		agent.get("http://www.asx.com.au/asx/research/companyInfo.do?by=asxCode&asxCode=#{code}")
		agent.page.search('#share-price').search('tr')[1].search('td')[5].text.to_f
	end
end