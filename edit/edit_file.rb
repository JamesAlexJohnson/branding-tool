require_relative '../templates/style_templates'

class EditFile
  
  @setting
  @file_out
  @styles

  def edit_file(setting)
    @setting = setting
    template = template_insert(setting[:template])
    make_change(setting[:file_name], template, setting[:file])  
  end

  def template_insert(template_id)
    @styles = Styles.new
    template = @styles.get_template(template_id, @setting)
  end

  private

    def make_change(file_name, template, file_in)
        @file_out = File.open(file_name, "w") 
        @file_out.syswrite(file_in.gsub(/(?<=\/\/----start)[^*]+(?=\/\/----end)/, "\n #{template} \n"))
        @file_out.close
    end

end