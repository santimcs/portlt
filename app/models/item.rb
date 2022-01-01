class Item < ApplicationRecord
  belongs_to :ticker
  #validates :name, :uniqueness => true
	before_save :assign_names
 #  default_scope { order(name: 'asc', year: 'desc', quarter: 'desc') }

  YEAR = [
          "2020",
			    "2019"
        	]

  QUARTER = [
            "2",
            "1",      
            "4",
          	"3"
    ]
    
    HOUR = [
      "23",      
      "22",
      "21",
      "20",      
      "19",
      "18",
      "17",
      "13",
      "12",      
      "09",
      "08",
      "07",
      "06"
]    

	private

	def assign_names
		ticker = Ticker.find(self.ticker_id)
		self.name = ticker.name
  end

end
