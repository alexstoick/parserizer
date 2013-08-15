require 'readability'
require 'open-uri'

class Parser

	attr_accessor :parsed

	def initialize( url )
		begin
			source = open( url ).read
			@parsed = Readability::Document.new(source).content
		rescue Exception => e
			puts e.message
		end
	end

end

