class TimeTableDay < ActiveRecord::Base
  has_many :time_table_times
  belongs_to :time_table_week
end
