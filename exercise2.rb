class Rover
	def initialize(x = 0, y = 0)
		@x = x
		@y = y
	end

	def read_instruction(move_or_turn)
	end

	def move(x, y)
		@x += x
		@y += y
	end

	def turn
	end

	def to_s
		"(#{@x}), (#{@y})"
	end
end

rover = Rover.new
puts rover
rover.move(1, 3)
puts rover


