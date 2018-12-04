class CreateTimeTableDays < ActiveRecord::Migration
  def change
    create_table :time_table_days do |t|
      t.references :time_table_times, index: true, foreign_key: true
     t.references :time_table_week

      t.timestamps null: false
    end
  end
end
