class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|

      t.text :content,     null: false
      t.date :day,         null: false
      t.integer :distance, null: false
      t.integer :time,     null: false
      t.string :prace
      t.references :user,  foreign_key: true
      t.timestamps
    end
  end
end
