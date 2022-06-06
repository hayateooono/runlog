class AddHourTimeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :hour_time, :integer
    add_column :users, :min_time, :integer
    add_column :users, :sec_time, :integer
  end
end
