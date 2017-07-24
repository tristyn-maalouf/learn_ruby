class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end
  def time_string
    if @seconds < 10 #seconds only
      return "00:00:#{form(@seconds)}"
    elsif @seconds < 3699 #minutes and seconds
      return "00:#{form(@seconds/60)}:#{form(@seconds%60)}"
    else #hours, minutes, seconds
      return "#{form(@seconds/3600)}:#{form(@seconds%3600/60)}:#{form(@seconds%3600-60*(@seconds%3600/60))}"
    end
  end
  def form(n)
    if n < 10
      return "0#{n}"
    elsif n < 60
      return "#{n}"
    end
  end
end
