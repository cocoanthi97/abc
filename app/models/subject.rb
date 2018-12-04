class Subject < ActiveRecord::Base
# has_many :books
#belongs_to :time_table_time
  has_many :subject_time_table_times,  dependent: :destroy
  has_many :time_table_times,  :through => :subject_time_table_times
  
  accepts_nested_attributes_for :subject_time_table_times, allow_destroy: true
end
