class Setup

  def setup
    read_in(get_file_path)
  end

  private 

    def get_file_path
      puts "please copy and past the full file path of the project to be edited\n\n"
      file_path = gets.chomp
      puts File.exist?(file_path)
      return file_path unless !File.exist?(file_path)
      puts "There doesn't seem to be a file here \n\n"
      # this doesn't return the file path after the recursive call 
    end

    def read_in(file_path)
      begin 
        File.read(file_path)
      rescue => e 
        puts e.message 
      end
    end 

end