class CreateSubjectRequireSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subject_require_subjects do |t|
 #   t.references :require_subjects, index: true, foreign_key: true
  #  t.references :required_subjects, index: true, foreign_key: true

    
    
      t.timestamps
    end
  end
end
