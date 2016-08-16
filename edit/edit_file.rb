class EditFile
  
  @file_out

  def edit_file(file_name, text_in_from_template, file_in)
      @file_out = File.open(file_name, "w") 
      @file_out.syswrite(file_in.gsub(/(?<=\/\/----start)[^*]+(?=\/\/end)/, "\n #{text_in_from_template} \n"))
      @file_out.close
  end

end