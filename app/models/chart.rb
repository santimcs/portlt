class Chart < ApplicationRecord
	belongs_to :ticker
	before_save :assign_names
	default_scope { order(name: 'asc') }

  	YEAR = [
          	"2018",
          	"2017",
						"2016",
						"2015",
						"2014",
						"2013",
						"2012",
						"2011"
        	]

  	QUARTER = [
          	"4",
          	"3",
          	"2",
            "1"
        	]

private

	def assign_names
		ticker = Ticker.find(self.ticker_id)
		self.name = ticker.name
  	end

end
