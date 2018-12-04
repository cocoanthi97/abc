class TimeTableTime < ActiveRecord::Base
 belongs_to :time_table_day
  has_many :subject_time_table_times,  dependent: :destroy
  has_many :subjects,  :through => :subject_time_table_times
  
  accepts_nested_attributes_for :subject_time_table_times, allow_destroy: true
end
