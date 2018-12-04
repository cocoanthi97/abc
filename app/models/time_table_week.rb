class TimeTableWeek < ActiveRecord::Base
  has_many :time_table_days
end
