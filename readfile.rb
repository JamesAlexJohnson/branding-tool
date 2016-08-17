#!/bin/ruby
require_relative 'user_input/setup'
require_relative 'edit/edit_file'

class ReadFile 
	
	@file_out

	def initialize

		setup_object = Setup.new
		file = setup_object.setup

		edit_file = EditFile.new
		settings = {file_name: "colors.js", template: 1, file: file}
		edit_file.edit_file(settings)
	end


end

r = ReadFile.new

