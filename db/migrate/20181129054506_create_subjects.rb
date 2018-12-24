class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :description
      t.references :time_table_times
      t.integer :lecture #第一段階学科
      t.integer :practice #第一段階技能

    #  t.references :require_subject, index: true, foreign_key: true

      t.timestamps null: false
      
      
    end
  end
end
