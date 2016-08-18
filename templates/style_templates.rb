#!/bin/ruby
class Styles

  @setting
  
  def initialize
    puts "Styles initialize"
  end
  
  def get_template(template_name, setting)
      @setting = setting
      @template = color_template
  end

  private 
    
    def color_template
      random_number = Random.new
      num = random_number.rand(1..100)
      yurp =  "(function() {
                edited
                crm.ui.colors = {
                        labelColor: #{@setting[:colors][:labelColor]},
                        mainColor: #{@setting[:colors][:mainColor]},
                        accent: #{@setting[:colors][:accent]}, 
                        btnPosFontColor: #{@setting[:colors][:btnPosFontcolor]},
                        btnBorderColor: #{@setting[:colors][:btnBorderColor]},
                        btnPosBgColor: #{@setting[:colors][:brnPosBgColor]},
                        bgColor: #{@setting[:colors][:bgColor]},
                        calendarViewColor: #{@setting[:colors][:calendarViewColor]}
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
        "+num.to_s
    end

end