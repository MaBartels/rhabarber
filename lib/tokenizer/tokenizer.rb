module Tokenizer

class Tokenizer

	def initialize (l=:de)
	
		@l = l
	
	end #initialize

	def tokenize(str)
			
		tokens = []
		tokens = str.split
		
		return tokens
	
	end #tokenize

puts "neuer Test"

end
end