class Performance < ActiveRecord::Base
  belongs_to :event

def formatted_time
  hour = eval(self.start)[4]
  am_or_pm = "am"
  if hour > 12
    hour = hour - 12
    am_or_pm = "pm"
  end
  minute = eval(self.start)[5]
    minute = "00" if minute == 0
  "#{hour}:#{minute} #{am_or_pm}"
end

def start_time
    self.date
end

end
