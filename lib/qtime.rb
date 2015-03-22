require "time"
require "date"

class Numeric
  def days
    (self.to_f * 86400).to_i
  end
end

class Qtime
  class << self
    def sub(time1, time2)
      if time1.is_a?(Time) and time2.is_a?(Time)
        sub = time1.to_i - time2.to_i
        if sub >0
          return time1.to_i - time2.to_i
        else
          raise "parameter 1 is bigger than parameter 2, the sub is #{sub}"
        end
      else
        raise "wrong arguments type, it is need Time"
      end
    end
  end
end

class Time

  def normal_parse
    self.strftime("%Y-%m-%d %H:%S:%M")
  end

  def to_day(separator="")
    case separator
    when "line"
      self.strftime("%Y-%m-%d")
    when "solidus"
      self.strftime("%Y/%m/%d")
    else
      self.strftime("%Y%m%d")
    end
  end

end

#p Time.new.to_day
