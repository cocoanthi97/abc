class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :description
      t.references :time_table_times
      t.references :time_tables
      t.timestamps null: false
      
      
    end
  end
end
