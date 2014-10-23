class Rover
	
	attr_accessor :x, :y, :direction

	def initialize(x = 0, y = 0, direction)
		@x = x
		@y = y
		@direction = direction
	end

	def read_instruction(instruction)
		if instruction == "M"
			move
		elsif instruction == "L"
			turn_left
		elsif instruction == "R"
			turn_right
		else
			puts "Instruction not recognized!"
		end
	end

	def move
		if direction == "N"
			@y += 1
		elsif direction == "W"
			@x += -1
		elsif direction == "S"
			@y += -1
		elsif direction == "E"
			@x += 1
		end
	end

	def turn_left
		if direction == "N"
			@direction = "W"
		elsif direction == "W"
			@direction = "S"
		elsif direction == "S"
			@direction = "E"
		elsif direction == "E"
			@direction = "N"
		end				
	end

	def turn_right
		if direction == "N"
			@direction = "E"
		elsif direction == "E"
			@direction = "S"
		elsif direction == "S"
			@direction = "W"
		elsif direction == "W"
			@direction = "N"
		end				
	end

end

rover = Rover.new(0, 0, "N")
puts "Rover's current position is #{rover.x}, #{rover.y}, facing #{rover.direction}"

while true
	puts "Move (M), turn left (L), turn right (R), or (EXIT)"
	user_instruction = gets.chomp
	if user_instruction == "EXIT"
		break
	else	
		rover.read_instruction(user_instruction)
		puts "Rover's current position is #{rover.x}, #{rover.y}, facing #{rover.direction}"
	end
end

