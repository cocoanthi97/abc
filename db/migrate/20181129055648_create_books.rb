class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.date :date
      t.integer :time
      t.references :subject, index: true, foreign_key: true
      t.references :user

      t.timestamps null: false
    end
  end
end
