class ChangeColumnAppointment < ActiveRecord::Migration[5.2]
  def change
    change_column :appointments, :date, :date
    change_column :appointments, :start_time, :time
    change_column :appointments, :status, :string, default: "pending"
  end
end
