#!/usr/bin/env ruby

$tax_rate = 0.1 # 10%

class Car
	#Attr_reader allows access to variable (a getter named 'type')
	attr_reader		:type
	#attr_accessor defines methods value and value= (A Getter and a setter).
	attr_accessor	:value

	#Constructor
	def initialize(type, value)
		@type = type;
		@value = value * (1+$tax_rate);
	end

	def to_s
		"Car model: %s, price: %d" % [type, value];
	end
end


car1 = Car.new("Nissan", 15000);
car2 = Car.new("BMW", 45000);

puts car1
puts car2

car1.value = 60000;
puts car1