class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end

  def padded(time)
    if time >10
      return time.to_s
    else
      return "0"+time.to_s
    end
  end
  
  def time_string
  	hours = @seconds/3600
  	minutes = (@seconds%3600)/60
  	seconds = @seconds-(hours*3600)- (minutes*60)
    array = [padded(hours),padded(minutes),padded(seconds)]
    @time_string = array.join(":")
  end

end
