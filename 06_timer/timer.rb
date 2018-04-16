class Timer
  #write your code here

  def initialize
    @trackedTime = 0
  end

  def seconds=(value)
    @trackedTime = value
  end

  def seconds
    @trackedTime
  end

  def time_string
    theSeconds = @trackedTime % 60
    minutes = @trackedTime / 60 % 60
    hours = @trackedTime / 60 / 60

    return padded(hours) + ":" + padded(minutes) + ":" + padded(theSeconds)
  end

  def padded(theNum)
    if theNum < 10
      return "0" + theNum.to_s
    else
      return theNum.to_s
    end
  end
end