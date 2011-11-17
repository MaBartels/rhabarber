$LOAD_PATH.unshift('U:\rhabarber\lib')

require 'tokenizer/tokenizer'
require 'test/unit'

class TestTokenizer < Test::Unit::TestCase

	def setup
	
		@t = Tokenizer::Tokenizer.new(:de)
	
	end #setup


	def test_has_method

		assert_equal(true,@t.respond_to?(:tokenize))	# assert(@t.respond_to?(:tokenize))

	end #test_has_method
	
	def test_array

		assert_instance_of(Array, @t.tokenize("x y z"))
	
	end
	
	def test_empty_array
	
		assert_equal(false,@t.tokenize("x y z").empty?)
	
	end #test_empty_array
		
	
end #TestVersion