class Ability < ActiveRecord::Base
	belongs_to 		:gig
	belongs_to 		:skills

end