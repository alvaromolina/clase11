class Movie < ActiveRecord::Base
	has_many :reviews

	validates :name, :presence => true
	validates :name, :length => { :minimum => 3 }
	validates :name, :length => { :maximum => 20 }


	before_validation :trim_name


	def trim_name
		if self.name.length > 20
			self.name = self.name[0..19]
		end

	end


end
