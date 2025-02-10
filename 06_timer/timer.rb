class Timer
  #write your code here
  def seconds
    0
  end

  def seconds=(second)   
    if second == 0
      @seconds  = 0
      @minuts   = 0
      @hours    = 0
    else    
      @seconds = second
      @minuts = second / 60
      @hours =  second / 3600
    end
    @hours = @hours % 24 if @hours > 24
    @hours = padded(@hours) if @hours < 10
    @minuts = @minuts %  60 if @minuts > 60
    @minuts = padded(@minuts) if @minuts < 10
    @seconds = @seconds % 60 if @seconds > 60
    @seconds = padded(@seconds) if @seconds < 10
 
  end

  def padded(pad)
    return "0#{pad}" if pad < 10
    "#{pad}"
  end

  def time_string
   result = sprintf("%s:%s:%s", @hours, @minuts, @seconds)
   result
  end
end

