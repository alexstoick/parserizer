require 'readability'
require 'open-uri'

class Parser

	attr_accessor :parsed
	attr_accessor :images

	def initialize( url )
		begin
			source = open( url ).read
			body = Readability::Document.new(source)
			@parsed = body.content
			@images = body.images
		rescue Exception => e
			puts e.message
		end
	end

end

