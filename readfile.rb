#!/bin/ruby

class ReadFile 

@path_to_file 
@path_to_repo 
@file
@file_out
@project_name

	def initialize
		puts "initialize"
		pull_repo(@project_name)
		get_path
		read_in
		edit_file
	end

	def pull_repo(project_name)
		puts "pull repo"
		# enter git credentials		
		# pull down project 
	end

	def get_path
		@path_to_file = "edit_file.rb"
	end

  def read_in
		begin 
			raise "File not found"  unless (@path_to_file.nil? || File.exists?(@path_to_file))
			@file = File.read(@path_to_file)
			puts @file
		rescue => e 
			puts e.message
		end
	end	

	def edit_file
		@file_out = File.open(@path_to_file, "w") 
		@file_out.syswrite(@file.gsub(/(?<=start)[.*]+(?=end)/,"worked"))
		@file_out.close
	end

end

r = ReadFile.new

