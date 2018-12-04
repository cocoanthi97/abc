class CreateTimeTableTimes < ActiveRecord::Migration
  def change
    create_table :time_table_times do |t|
      t.references :time_table_day
      t.references :subjects
      t.timestamps null: false
    end
  end
end
