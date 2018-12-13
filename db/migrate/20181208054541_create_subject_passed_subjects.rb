class CreateSubjectPassedSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subject_passed_subjects do |t|
    t.references :user, index: true, foreign_key: true
    t.references :subject, index: true, foreign_key: true
      t.timestamps
    end
  end
end
