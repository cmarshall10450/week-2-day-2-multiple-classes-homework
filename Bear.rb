class Bear

	attr_reader :name, :stomach

	def initialize(name)
		@name = name
		@stomach = []
	end

	def take_fish_from_river(river)
		fish = river.fish.pop()
		@stomach.push(fish)
	end

	def roar
		return 'Roar!'
	end

end