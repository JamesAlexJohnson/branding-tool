#!/bin/ruby
require_relative 'templates/style_templates'
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
		file = read_in(setup)
		styles = Styles.new
		@text_in_from_template = styles.get_template(1)
		puts @text_in_from_template
		edit_file(file)
	end

	def greeting
		puts "Welcome to the branding tool, press enter to continue \n\n"
		input_value = gets
		return unless !continue?(input_value, "\n")
		puts "invalid entry \n\n"
		greeting
	end

	def setup
		puts "please copy and past the full file path of the project to be edited\n\n"
		file_path = gets.chomp
		puts File.exist?(file_path)
		return file_path unless !File.exist?(file_path)
		puts "There doesn't seem to be a file here \n\n"
		setup
	end

  def read_in(file_path)
		begin 
			@file = File.read(file_path)
		rescue => e 
			puts e.message 
		end
	end	

	def edit_file(file)
		@file_out = File.open("colors.js", "w") 
		@file_out.syswrite(@file.gsub(/(?<=\/\/----start)[^*]+(?=\/\/end)/, "\n #{@text_in_from_template} \n"))
		@file_out.close
	end

	def set_color
		@main_color = "\'\#ffffff\'"
	end

	private 

		def continue?(input, correct_value)
			input == correct_value
		end

end

r = ReadFile.new

