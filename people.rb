class Person
	attr_accessor :name
	def initialize(name)
		@name = name
	end

	def greeting(name)
		puts "Hi, my name is #{name}"
	end
end

class Student < Person
	def learn
		puts "I get it"
	end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby is an object"
	end
end



instructor = Instructor.new("Chris")
instructor.greeting("Chris")

student = Student.new("Christina")
student.greeting("Christina")

instructor.teach
student.learn

# you can't call the teach method on the student instance because they're in separate classes