# :title: My first tokenizer

# :main: readme.rdoc 

module Tokenizer

# guess what...

class Tokenizer

# regexp

WL = /\s+/ 

	def initialize (l=:de)
	
		@l = l
	
	end #initialize

	def tokenize(str)
			
		tokens = []
		tokens = str.split(WL)
		
		return tokens
	
	end #tokenize

puts "neuer Test"

end
end