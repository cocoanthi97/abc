class Subject < ActiveRecord::Base

  has_many :subject_time_table_times,  dependent: :destroy
  has_many :time_table_times,  :through => :subject_time_table_times
  
  has_many :subject_passed_subjects,  dependent: :destroy
  has_many :user, :through => :subject_passed_subjects
  
  accepts_nested_attributes_for :subject_time_table_times, allow_destroy: true #accepts_nested_attributes_for :subject_passed_subjects, allow_destroy: true
end
