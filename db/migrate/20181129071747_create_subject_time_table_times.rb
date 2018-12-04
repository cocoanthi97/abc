class CreateSubjectTimeTableTimes < ActiveRecord::Migration
  def change
    create_table :subject_time_table_times do |t|
      t.references :subject, index: true, foreign_key: true
      t.references :time_table_time, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
