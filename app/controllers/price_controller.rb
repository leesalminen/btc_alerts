class PriceController < ApplicationController
	skip_before_action :require_login
	def coinbase
		@prices = Price.get_coinbase()
		
		@data_price = []
		@prices.each do |p|
   			@data_price << p.rate.to_s.to_f
		end
    	@data_price = @data_price.join(", ")
	end

	def mtgox
		@prices = Price.get_mtgox()

		@data_price = []
		@prices.each do |p|
   			@data_price << p.rate.to_s.to_f
		end
    	@data_price = @data_price.join(", ")
	end

	def all
		@prices = Price.get_all()

		@data_price_mtgox = []
    	@data_price_coinbase = []
		@prices.each do |p|
			if p.source == 'coinbase'
   				@data_price_coinbase << p.rate.to_s.to_f
   			elsif p.source == 'mtgox'
   				@data_price_mtgox << p.rate.to_s.to_f
   			end
		end
    	@data_price_coinbase = @data_price_coinbase.join(", ")
    	@data_price_mtgox 	 = @data_price_mtgox.join(", ")
	end
end