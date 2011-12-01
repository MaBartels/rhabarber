require 'optparse'

module Tokenizer

	class OptParse

		def OptParse.parse(args)
		
			@@options = {}
			parser = OptParse.create_parser # Klassen- keine Instanzmethode
			parser.parse(args)
		
		end

		private

		def self.create_parser
		
			OptionParser.new do|args| # || -> Block als Parameter; liefert Instanz von der Klasse; auch return OptionParser.new do|args|
			argsbanner = 'Usage: tokenize ARGS'
			args.on('-h', '--help', 'Show this summary!')			# ON -> schalte etwas ein
				puts args; exit
			
			end
		
		end
		

	end
end