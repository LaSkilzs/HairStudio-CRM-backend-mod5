class ChangeAppointmentColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :appointments, :status, :string
  end

end
