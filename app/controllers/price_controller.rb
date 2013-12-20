class PriceController < ApplicationController
	skip_before_action :require_login
	def coinbase
		@prices = Price.where(source: "coinbase").last(100).reverse
	end
	def mtgox
		@prices = Price.where(source: "mtgox").last(100).reverse
	end
	def all
		@prices = Price.last(200).reverse
	end
end