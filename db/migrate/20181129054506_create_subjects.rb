class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :description
      t.references :time_table_times
      t.references :time_tables
      t.references :require_subjects, index: true, foreign_key: true
      t.references :required_subjects, index: true, foreign_key: true
      t.timestamps null: false
      
      
    end
  end
end
