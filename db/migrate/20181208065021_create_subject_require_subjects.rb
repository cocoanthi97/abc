class CreateSubjectRequireSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subject_require_subjects do |t|

      t.timestamps
    end
  end
end
