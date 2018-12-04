class SubjectTimeTableTime < ActiveRecord::Base
  belongs_to :subject
  belongs_to :time_table_time

end
