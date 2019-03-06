class AddColumnToAppointment < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :hairstyle, :string, default: "Wash n Style"
    change_column :appointments, :duration,'integer USING CAST(duration AS integer)',default: 90
  end
end
