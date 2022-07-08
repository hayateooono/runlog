class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|

      t.text    :title,           null: false
      t.date    :day,             null: false
      t.integer :distance,        null: false
      t.integer :hour_time,       null: false
      t.integer :min_time,        null: false
      t.integer :sec_time,        null: false
      t.string  :place
      t.text    :content,         null: false
      t.references :user,  foreign_key: true
      t.timestamps
    end
  end
end
