class CartesianProduct
	include Enumerable
	def initialize(sq1, sq2)
		@sq1 = sq1
		@sq2 = sq2
	end

	def each
		if !(@sq1.empty? || @sq2.empty?)
			@sq1.each do |el|
				@sq2.each { |el2| yield [el,el2] }
			end
		end
	end

end
