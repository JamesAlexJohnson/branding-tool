#!/bin/ruby
require_relative 'templates/style_templates'
require_relative 'user_input/setup'
require_relative 'edit/edit_file'

class ReadFile 

	@path_to_file 
	@path_to_repo 
	@file
	@file_out
	@project_name = "civica-mobile"
	@ins
	@main_color
	@text_in_from_template

	def initialize
		greeting
		setup_object = Setup.new

		@file = setup_object.setup

		styles = Styles.new
		@text_in_from_template = styles.get_template(1)


		edit_file = EditFile.new
		edit_file.edit_file("colors.js", @text_in_from_template, @file)
	end

	def greeting
		puts "Welcome to the branding tool, press enter to continue \n\n"
		input_value = gets
		return unless !continue?(input_value, "\n")
		puts "invalid entry \n\n"
		greeting
	end

	private 

		def continue?(input, correct_value)
			input == correct_value
		end

end

r = ReadFile.new

