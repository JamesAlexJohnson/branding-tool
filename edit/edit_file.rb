class EditFile
  
  @file_out

  def edit_file(file, text_in_from_template)
      @file_out = File.open(file, "w") 
      @file_out.syswrite(@file.gsub(/(?<=\/\/----start)[^*]+(?=\/\/end)/, "\n #{text_in_from_template} \n"))
      @file_out.close
  end

end