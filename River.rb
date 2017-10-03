class River

	attr_reader :name, :fish

	def initialize(name, fish)
		@name = name
		@fish = fish
	end

	def fish_count
		return @fish.count
	end

end