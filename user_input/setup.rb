class Setup
  @colors

  def initialize
    @colors = {
          labelColor: '#0f0f0f', 
          labelColor: '#0f0f0f',
          mainColor: '#0f0f0f',
          accent: '#0f0f0f', 
          btnPosFontColor: '#0f0f0f',
          btnBorderColor: '#0f0f0f',
          btnPosBgColor: '#0f0f0f',
          bgColor: '#0f0f0f',
          calendarViewColor: '#0f0f0f'
        }
  end

  def setup
    greeting
    file = read_in(get_file_path)
    set_colors
    file
  end

  def get_colors
    @colors
  end

  private 

    def greeting
      puts "Welcome to the branding tool, press enter to continue \n\n"
      input_value = gets
      return unless !continue?(input_value, "\n")
      puts "invalid entry \n\n"
      greeting
    end

    def set_colors
      @colors.each do |key, value| 
        puts "Please enter the hexidecimal value for #{key}"
        @colors[key] = '\'#'+gets.chomp+'\''
      end
      puts @colors
    end

    def get_file_path
      puts "please copy and past the full file path of the project to be edited\n\n"
      file_path = gets.chomp
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

    def continue?(input, correct_value)
      input == correct_value
    end
end