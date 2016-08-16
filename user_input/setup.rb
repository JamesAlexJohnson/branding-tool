#!bin/ruby

class Setup

  @file

  def inititalize
    puts "Setup Initialize \n"
  end

  def setup
    read_in(get_file_path)
    @file
  end

  def get_file_path
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

end