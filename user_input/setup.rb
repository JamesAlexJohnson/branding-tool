#!bin/ruby

class Setup

  def inititalize
    puts "Setup Initialize \n"
  end

  def setup
    puts "please copy and past the full file path of the project to be edited\n\n"
    file_path = gets.chomp
    puts File.exist?(file_path)
    return file_path unless !File.exist?(file_path)
    puts "There doesn't seem to be a file here \n\n"
    setup
  end

end