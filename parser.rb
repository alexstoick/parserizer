require 'readability'
require 'open-uri'

class Parser

	attr_accessor :parsed

	def initialize( url )
		source = open( url ).read
		@parsed = Readability::Document.new(source).content
	end

end

