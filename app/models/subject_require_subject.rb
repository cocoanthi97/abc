class SubjectRequireSubject < ApplicationRecord

  belongs_to :require_subject, foreign_key: 'require_subjects_id', class_name: 'Subject'
  belongs_to :required_subject, foreign_key: 'required_subjects_id', class_name: 'Subject'
  
end
