class Subject < ActiveRecord::Base
# has_many :books
#belongs_to :time_table_time
  has_many :subject_time_table_times,  dependent: :destroy
  has_many :time_table_times,  :through => :subject_time_table_times
  
  has_many :subject_passed_subjects,  dependent: :destroy
  has_many :user, :through => :subject_passed_subjects
  
  #has_many :subject_require_subjects
  #has_many :require_subjects, through: :subject_require_subjects
  #has_many :subject_require_subjects
  #has_many :required_subjects, through: :subject_require_subjects
  
  #has_many :require_subjects, foreign_key: 'required_subject_id', class_name: 'Subject'
  #has_many :, through: :subject_require_subject, source: :
  #has_many :required_subjects, foreign_key: 'require_subject_id', class_name: 'Subject'
  #has_many :requireds, through: :subject_require_subject, source: :
    
 # has_many :require_subjects, foreign_key: 'required_subject_id', class_name: 'Subject'
 # has_many :required_subjects, foreign_key: 'require_subject_id', class_name: 'Subject'
  #has_many :require_subjects, through: :subject_require_subject
  #has_many :required_subjects, through: :subject_require_subject

  
  
  accepts_nested_attributes_for :subject_time_table_times, allow_destroy: true #accepts_nested_attributes_for :subject_passed_subjects, allow_destroy: true
end
