#!/usr/bin/ruby

$var1 = 1
var2 = 2
Const1 = 111

def method1
	puts "Method1"
end

class Teeny
	Const2 = 222
	def method2
		puts "Method2"
	end

	def self.method3
		puts "Method3"
	end
end

class Tiny
	Const3 = 333
	def method4
	end

	def method5
	end
end

class Test < Tiny
	@@var3 = 3
	@var4

	def initialize
		@var4 = 4
	end

	def method5
		_var5 = 5

		puts "#{defined? $var1 			or "UNDEFINED"}"
		puts "#{defined? var2 			or "UNDEFINED"}"
		puts "#{defined? @@var3 		or "UNDEFINED"}"
		puts "#{defined? @var4 			or "UNDEFINED"}"
		puts "#{defined? _var5 			or "UNDEFINED"}"
		puts "#{defined? var6 			or "UNDEFINED"}"

		puts "\n"

		puts "#{defined? Const1 		or "UNDEFINED"}"
		puts "#{defined? Const2 		or "UNDEFINED"}"
		puts "#{defined? Const3			or "UNDEFINED"}"

		puts "\n"

		puts "#{defined? method1 		or "UNDEFINED"}"
		puts "#{defined? method2 		or "UNDEFINED"}"
		puts "#{defined? Teeny.method3 	or "UNDEFINED"}"

		puts "\n"

		puts "#{defined? method4 		or "UNDEFINED"}"
		puts "#{defined? super	 		or "UNDEFINED"}"

		puts "\n"

		puts "#{defined? Teeny	 		or "UNDEFINED"}"
	end
end

Teeny.new
Test.new.method5