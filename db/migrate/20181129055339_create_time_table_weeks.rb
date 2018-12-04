class CreateTimeTableWeeks < ActiveRecord::Migration
  def change
    create_table :time_table_weeks do |t|
      t.references :time_table_days, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
