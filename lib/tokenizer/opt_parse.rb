require 'optparse'
require 'tokenizer/version.rb'

module Tokenizer

	class OptParse

		def OptParse.parse(args)
		
			@@options = {}
			parser = OptParse.create_parser # Klassen- keine Instanzmethode
			
			begin
				parser.parse(args)
				rescue OptionParser::InvalidArgument
				rescue OptionParser::InvalidOption => e
			STDERR.puts 'Falsche 0pt1on' # #{e.message}
			exit(1)
			end
		end

		private

		def self.create_parser
		
			OptionParser.new do|args| # || -> Block als Parameter; liefert Instanz von der Klasse; auch return OptionParser.new do|args|
			
			args.banner = 'Usage: tokenize ARGS'
			args.on('-h', '--help', 'Show this summary!') do
				puts args; exit
			end
			args.on('-v', '--version', 'Show this version!') do
				puts VERSION; exit
			end
			end
		
		end
		

	end
end