class Eps < ApplicationRecord

	belongs_to :ticker
	before_save :assign_names
 #  default_scope { order(name: 'asc', year: 'desc', quarter: 'desc') }

  	YEAR = [
			"2023", 			
			"2022", 			
			"2021",
			"2020",
            "2019",
          	"2018",
          	"2017",
			"2016",
			"2015",
			"2014"
        	]

  	QUARTER = [
		"3",
		"2",
		"1",  		
		"4"
		]

	def q_amt_in_million
     	q_amt.div(1000)
   	end

  	def y_amt_in_million
     	y_amt.div(1000)
   	end

  	def aq_amt_in_million
     	aq_amt.div(1000)
   	end

  	def ay_amt_in_million
     	ay_amt.div(1000)
   	end

	private

	def assign_names
		ticker = Ticker.find(self.ticker_id)
		self.name = ticker.name

    	if (self.quarter == 4)
       		eps = Eps.where(name: self.name, year: self.year, quarter: '3')
        	if eps
          		self.q_amt = self.aq_amt - eps.first.aq_amt
          		self.y_amt = self.ay_amt - eps.first.ay_amt
          		self.q_eps = self.aq_eps - eps.first.aq_eps
          		self.y_eps = self.ay_eps - eps.first.ay_eps
        	end
    	end

    	if (self.quarter == 1)
          	self.aq_amt  = self.q_amt
          	self.ay_amt  = self.y_amt
          	self.aq_eps  = self.q_eps
          	self.ay_eps  = self.y_eps
    	end

  	end

end
