#!/bin/ruby

class ReadFile 

@path_to_file 
@path_to_repo 
@file
@file_out
@project_name = "civica-mobile"
@r

	def initialize
		@r = 
"(function() {
    crm.ui.colors = {
            labelColor: '#000000',
            mainColor: '#6a1a41',
            accent: '#380e22', 
            btnPosFontColor: '#000000',
            btnBorderColor: '#000000',
            btnPosBgColor: '#380e22',
            bgColor: '#ffffff',
            calendarViewColor: '#ffffff'
    };
    
    crm.ui.theme = {
            winBgColor:'#f0f0f0',
            winTopBgColor:'#06385a',
            winBottomBgColor:'#ffffff',
            textColor:'#282828',
            textBGColor: '#fff',
            labelColor:'#000000',
            grayTextColor:'#888888',
            headerColor:'#FFFFFF',
            lightBlue:'#006cb1',
            darkBlue:'#93caed',
            bgNavActive:'#ffffff',
            bgRowOdd: '#26364e',
            labelColor: '#A9A9A9',
            bgNavNotActive:'#222222',
            fontFamily:crm.os({
                    iphone:'Helvetica Neue',
                    android:'Droid Sans'
            }),
    };

})();
"

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
		@path_to_file = "colors.js"
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
		puts @r
		@file_out = File.open(@path_to_file, "w") 
		@file_out.syswrite(@file.gsub(/(?<=\/\/start)[^*]+(?=\/\/end)/, "\n #{@r} \n"))
		@file_out.close
	end

end

r = ReadFile.new
